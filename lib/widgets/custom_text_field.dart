import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/values/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Widget suffixIcon;
  final bool obscure;
  final ValueChanged<String> onChanged;

  const CustomTextField({
    Key key,
    this.hintText,
    this.suffixIcon,
    this.obscure = false,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        cursorHeight: 24,
        onChanged: onChanged,
        obscureText: obscure,
        style: TextStyle(
          color: BaseColors.appBlackColor,
          fontSize: 16,
        ),
        decoration: InputDecoration(
          filled: true,
          hintText: hintText,
          suffixIcon: suffixIcon,
          hintStyle: TextStyle(
            color: BaseColors.appBlackColor,
            fontSize: 16,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: BaseColors.textFieldFillColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: BaseColors.textFieldFillColor,
            ),
          ),
          fillColor: BaseColors.textFieldFillColor,
        ),
      ),
    );
  }
}
