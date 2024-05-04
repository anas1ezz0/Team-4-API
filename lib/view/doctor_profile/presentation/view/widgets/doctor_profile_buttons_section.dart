import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/routing/routing.dart';

import '../../../../../theming/colors.dart';
import 'doctor_profile_button.dart';

class DoctorProfileButtonsSection extends StatelessWidget {
  const DoctorProfileButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 20.h,end: 15.w,bottom: 0.h),
      child: Row(
        children: [
          DoctorProfileButton(
            text: 'Send Message',
            buttonColor: AppColor.lightGreyColor,
            textColor: AppColor.greyColor,
            onTap: () {
              context.pushNamed(Routes.messageDoctorView);
            },
          ),
          const Spacer(),
          DoctorProfileButton(
            text: 'Book Now',
            buttonColor: AppColor.mainColor,
            textColor: AppColor.secondaryColor,
            onTap: () {
              context.pushNamed(Routes.paymentOptionScreen);
            },
          ),
        ],
      ),
    );
  }
}
