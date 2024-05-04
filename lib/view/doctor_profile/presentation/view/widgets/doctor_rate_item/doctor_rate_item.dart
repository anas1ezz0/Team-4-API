import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../theming/colors.dart';
import 'doctor_rate_text.dart';

class DoctorRateItem extends StatelessWidget {
  const DoctorRateItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsetsDirectional.only(top: 7.h) ,
      child: Container(
          width:70.w ,
          height: 25.h,
          decoration: BoxDecoration(
            color: AppColor.mainColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 12.w,end: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const DoctorRateText(),
                const Spacer(),
                Icon(Icons.star,color: Colors.yellow,size: 13.h,)
              ],
            ),
          )
      ),
    );
  }
}
