import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final TextStyle? textStyle;
  final ButtonStyle? buttonStyle;
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.textStyle,
      this.buttonStyle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
