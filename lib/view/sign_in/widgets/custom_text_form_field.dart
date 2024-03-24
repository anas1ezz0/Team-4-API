import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final bool? isObscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final Color? backgroundColor;
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.inputTextStyle,
    this.hintStyle,
    this.isObscureText,
    this.suffixIcon,
    this.focusedBorder,
    this.enabledBorder,
    this.backgroundColor,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText ?? false,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        suffixIcon: suffixIcon,
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1.3,
                )),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1.3,
                )),
      ),
    );
  }
}
