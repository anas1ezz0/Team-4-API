import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../theming/colors.dart';

class DoctorProfileBrief extends StatelessWidget {
  const DoctorProfileBrief({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsetsDirectional.only(top: 13.h,end: 7.w) ,
      child: Text(
        "Figma ipsum component variant main layer. Library figma resizing invite mask arrow ipsum community. Prototype main ellipse opacity community auto flatten link. List device rectangle figjam subtract. Font pixel selection image rotate. Outline asset arrow library flatten blur. Style plugin union edit align.",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: AppColor.textColor,
          wordSpacing: 1.5,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
