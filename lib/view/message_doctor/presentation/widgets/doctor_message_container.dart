import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../theming/colors.dart';

class DoctorMessageContainerItem extends StatelessWidget {
  const DoctorMessageContainerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsetsDirectional.only(start: 170.w),
      child: Container(
          width: 241.w,
          height: 100.h,
          decoration: BoxDecoration(
            color: AppColor.mainColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding:
                EdgeInsetsDirectional.only(end: 10.w, start: 10.w, top: 5.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hi, tell me how I can help you",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: AppColor.secondaryColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "12:45 AM",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: AppColor.secondaryColor),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
