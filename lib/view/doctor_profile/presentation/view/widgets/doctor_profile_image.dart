import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/app_assets.dart';

class DoctorProfileImage extends StatelessWidget {
  const DoctorProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height:180.h,
      child: Image.asset(AppAssets.doctorImage,),
    );
  }
}
