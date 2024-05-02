import 'package:flutter/material.dart';

import '../../../../../theming/colors.dart';

class DoctorExperienceText extends StatelessWidget {
  const DoctorExperienceText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 10, bottom: 10),
      child: Text(
        "12 years of experience",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColor.secondaryColor,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
    );
  }
}
