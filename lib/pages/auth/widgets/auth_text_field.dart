import 'package:flutter/material.dart';
import 'package:sporthub/constants/colors.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.text,
    required this.prefixIcon,
    required this.controller,
    this.isObscureText = false, this.suffixIcon,
  });

  final String text;
  final Widget prefixIcon;
  final TextEditingController controller;
  final bool isObscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscureText,
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: textFieldColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: textFieldColor,
          ),
        ),
        fillColor: textFieldColor,
        filled: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
      ),
    );
  }
}
