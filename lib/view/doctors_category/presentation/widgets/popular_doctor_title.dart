import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../theming/colors.dart';

class PopularDoctorTitle extends StatelessWidget {
  const PopularDoctorTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Popular Doctor',
          style: TextStyle(
            color: const Color(0xff233B55),
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        Text(
          'See All',
          style: TextStyle(
            color: AppColor.mainColor,
            fontWeight: FontWeight.w400,
            fontSize: 20.sp,
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward,
              size: 30,
              color: AppColor.mainColor,
            ))
      ],
    );
  }
}
