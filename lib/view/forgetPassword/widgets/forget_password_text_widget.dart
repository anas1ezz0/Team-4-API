import 'package:flutter/material.dart';
import 'package:team_project/theming/colors.dart';

class ForgetPasswordTextWidget extends StatelessWidget {
  const ForgetPasswordTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: AppColor.textColor, fontSize: 24, fontWeight: FontWeight.w600),
    );
  }
}
