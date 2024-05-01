import 'package:flutter/material.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/doctor_profile/presentation/view/widgets/doctor_experience_text.dart';
import 'package:team_project/view/doctor_profile/presentation/view/widgets/doctor_info_container.dart';
import 'package:team_project/view/doctor_profile/presentation/view/widgets/doctor_profile_image.dart';

class DoctorProfileView extends StatelessWidget {
  const DoctorProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        leading: InkWell(
          onTap: () {
            context.pop();
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: AppColor.secondaryColor,
          ),
        ),
      ),
      body: Column(
        children: [
          const DoctorProfileImage(),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColor.mainColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: const Column(
              children: [
                DoctorExperienceText(),
                DoctorInfoContainer(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
