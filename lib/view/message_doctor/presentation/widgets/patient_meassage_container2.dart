import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../theming/colors.dart';

class SecondPatientMessageContainerItem extends StatelessWidget {
  const SecondPatientMessageContainerItem({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
        width: 331.w,
        height: 100.h,
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
                "I am a patient i want to ask you about something ! ",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: AppColor.textColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "12:26 AM",
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
