import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../theming/colors.dart';

class DoctorProfileButton extends StatelessWidget {
  DoctorProfileButton(
      {super.key,
      required this.text,
      required this.buttonColor,
      required this.textColor,
      required this.onTap});

  String? text;
  Color? buttonColor;
  Color? textColor;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 154.w,
        height: 50.h,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColor.mainColor, width: 1.5)),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
