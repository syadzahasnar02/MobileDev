import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  final String myHint;
  final TextEditingController txtController;
  final bool isPassword;
  final Widget? suffixIcon;

  const MyInputField({
    super.key,
    required this.myHint,
    required this.txtController,
    this.isPassword = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      obscureText: isPassword,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Color(0xFF4B4B4B),
      ),
      decoration: InputDecoration(
        hintText: myHint,
        hintStyle: const TextStyle(
          color: Color(0xFFAFAFAF),
          fontWeight: FontWeight.bold,
        ),
        suffixIcon: suffixIcon,
        border: InputBorder.none,
        contentPadding: const EdgeInsets.all(16),
      ),
    );
  }
}