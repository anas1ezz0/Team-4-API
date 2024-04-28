import 'package:flutter/material.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/helpers/spacing.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/payment_option/widget/payment_option_body.dart';

class SuccessAppointmentScreen extends StatelessWidget {
  const SuccessAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  color: AppColor.mainColor,
                  borderRadius: BorderRadius.circular(70)),
              child:
                  Icon(Icons.check, size: 90, color: AppColor.secondaryColor)),
        ),
        Text(
          'Congratulations',
          style: TextStyle(
              color: AppColor.textColor,
              fontSize: 42,
              fontWeight: FontWeight.w900),
        ),
        Text(
          'Your Appointment Is Success',
          style: TextStyle(
              color: AppColor.textColor,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        verticalSpace(100),
        CustomBotton(
          horizontal: 30,
          text: 'Back',
          textColor: AppColor.secondaryColor,
          color: AppColor.mainColor,
          onTap: () {
            context.pop();
          },
        ),
      ],
    ));
  }
}
