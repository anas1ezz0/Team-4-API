import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../theming/colors.dart';

class DoctorCategoryText extends StatelessWidget {
  const DoctorCategoryText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsetsDirectional.only(top: 2.h),
      child: Text(
        "Speech",
        style: TextStyle(
          color: AppColor.mainColor,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
