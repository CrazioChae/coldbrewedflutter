import 'package:flutter/material.dart';
import 'package:flutter_app/login_app/login.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  final Widget button_image, button_text;
  final Color button_color;
  final double button_radius;
  final VoidCallback button_onPressed;

  MyButton(
      {required this.button_image,
      required this.button_text,
      required this.button_color,
      required this.button_radius,
      required this.button_onPressed});

  @override
  Widget build(BuildContext context) {
    final LogIn logIn = new LogIn();
    logIn.buildButton();

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: button_color!,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(button_radius!),
          ),
        ),
      ),
      onPressed: button_onPressed!,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          button_image!,
          button_text!,
          Opacity(
            opacity: 0,
            child: Image.asset(
              'images/glogo.png',
              width: 50,
              height: 50,
            ),
          )
        ],
      ),
    );
  }
}
