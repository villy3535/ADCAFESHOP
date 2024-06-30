import 'package:adcafeshop/components/my_button.dart';
import 'package:adcafeshop/components/my_textfield.dart';
import 'package:adcafeshop/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    required this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController ConfirmPasswordController =
      TextEditingController();

  // register method
  void register() async {
    // showDialog(
    //     context: context,
    //     builder: (context) => AlertDialog(
    //           backgroundColor: Theme.of(context).colorScheme.background,
    //           title: const Text("Users want ro register"),
    //         ));

    // get auth service
    final _authService = AuthService();

    // check if passwords match => create user
    if (passwordController.text == ConfirmPasswordController.text) {
      // try creating user

      try {
        await _authService.signUpWithEmailPassword(
          emailController.text,
          passwordController.text,
        );
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.toString()),
                ));
      }
    }

    // if passwords don't match => show erroe
    else {
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
                title: Text("passwords don't match!"),
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
            "Let's create an account for you",
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

          //confirm password textfield

          const SizedBox(
            height: 10,
          ),
          MyTextField(
              controller: ConfirmPasswordController,
              hintText: "Confirm Password",
              abscureText: true),

          //sign_up_button
          const SizedBox(
            height: 10,
          ),
          MyButton(
            text: "Sign Up",
            onTap: register,
          ),

          const SizedBox(
            height: 25,
          ),
          // already have an account? login here
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "already have an account?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Login Now",
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
