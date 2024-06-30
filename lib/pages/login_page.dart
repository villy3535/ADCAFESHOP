// ignore_for_file: deprecated_member_use

import 'package:adcafeshop/components/my_button.dart';
import 'package:adcafeshop/components/my_textfield.dart';
import 'package:adcafeshop/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // login method
  void login() async {
    // showDialog(
    //     context: context,
    //     builder: (context) => AlertDialog(
    //           backgroundColor: Theme.of(context).colorScheme.surface,
    //           title: const Text("User want to register."),
    //         ));
    // get instance of auth service
    final _authService = AuthService();

    // try sign in
    try {
      await _authService.signInWithEmailPassword(
        emailController.text,
        passwordController.text,
      );
    }
    // display any error
    catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // logo
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),

          const SizedBox(
            height: 25,
          ),
          //message, app slogan
          Text(
            "C A F E S H O P",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          //email_textfield
          MyTextField(
              controller: emailController,
              hintText: "Email",
              abscureText: false),
          //password_textfield

          const SizedBox(
            height: 10,
          ),
          MyTextField(
              controller: passwordController,
              hintText: "Password",
              abscureText: true),
          //sign_in_button

          const SizedBox(
            height: 10,
          ),
          MyButton(
            text: "Sign In",
            onTap: login,
          ),

          const SizedBox(
            height: 25,
          ),
          //not-a-member> register_new
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Register Now",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
