import 'package:flutter/material.dart';

import '../../../../../../theming/colors.dart';

class DoctorRateText extends StatelessWidget {
  const DoctorRateText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "4.9",
      style: TextStyle(
        color: AppColor.secondaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }
}
