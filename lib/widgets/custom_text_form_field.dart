import 'package:code_hackathon/themes/color.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? prefixIcon;
  const CustomTextFormField(
      {super.key, this.prefixIcon, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeColor.white,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: ThemeColor.grey,
            blurRadius: 5,
            offset: const Offset(-5, 5),
          )
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 24, right: 8),
            child: prefixIcon,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ThemeColor.grey),
            borderRadius: BorderRadius.circular(32),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ThemeColor.purple,
            ),
            borderRadius: BorderRadius.circular(32),
          ),
        ),
      ),
    );
  }
}
