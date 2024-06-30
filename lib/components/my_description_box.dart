import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    // textstyle
    var myPrimarytextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondarytextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Padding(
      // padding: const EdgeInsets.all(25),
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 25,
        bottom: 25,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // delivery fee
            Column(
              children: [
                Text("\$0.99", style: myPrimarytextStyle),
                Text("Delivery fee", style: mySecondarytextStyle),
              ],
            ),

            // delivery time
            Column(
              children: [
                Text("15-30 min", style: myPrimarytextStyle),
                Text("Delivery time", style: mySecondarytextStyle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
