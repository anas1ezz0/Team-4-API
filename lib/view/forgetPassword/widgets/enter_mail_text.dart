import 'package:flutter/material.dart';
import 'package:team_project/theming/colors.dart';

class EnterMail extends StatelessWidget {
  const EnterMail({super.key,required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: AppColor.textColor,fontSize: 18,fontWeight: FontWeight.w400),);
  }
}