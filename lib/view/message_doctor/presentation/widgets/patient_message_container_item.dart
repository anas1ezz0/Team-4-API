import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../theming/colors.dart';

class FirstPatientMessageContainerItem extends StatelessWidget {
  const FirstPatientMessageContainerItem({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 64.h,
        decoration: BoxDecoration(
          color: AppColor.starGreyColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.only(end: 10.w,start: 10.w,top: 5.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi Doctor",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: AppColor.textColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "12:25 AM",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: AppColor.textColor),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
