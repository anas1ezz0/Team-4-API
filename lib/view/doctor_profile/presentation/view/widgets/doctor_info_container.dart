import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../theming/colors.dart';
import 'doctor_name.dart';

class DoctorInfoContainer extends StatelessWidget {
  const DoctorInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColor.secondaryColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: Padding(
          padding:
              EdgeInsetsDirectional.only(top: 35.h, start: 20.w, bottom: 20.h),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DoctorName(),
            ],
          ),
        ),
      ),
    );
  }
}
