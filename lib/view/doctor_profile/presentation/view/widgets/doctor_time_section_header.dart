import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../theming/colors.dart';

class DoctorSectionsHeader extends StatelessWidget {
   DoctorSectionsHeader({super.key, required this.text});

  String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 10.h),
      child:Text(
        text!,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 17,
          color: AppColor.textColor,
        ),
      ),
    );
  }
}
