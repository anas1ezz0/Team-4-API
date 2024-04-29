import 'package:flutter/material.dart';
import 'package:team_project/helpers/spacing.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/payment_option/widget/payment_option_body.dart';
import 'package:team_project/view/praivce/widgets/privace_body.dart';
import 'package:team_project/view/praivce/widgets/privacy_header.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondaryColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.mainColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColor.secondaryColor,
          ),
        ),
        title: Text(
          'Privacy',
          style: TextStyle(
              color: AppColor.secondaryColor, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PrivacyHeader(),
              verticalSpace(20),
              const PrivaceBody(),
              verticalSpace(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomBotton(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    horizontal: 20,
                    text: "Save preferences",
                    color: AppColor.mainColor,
                    textColor: AppColor.secondaryColor,
                  ),
                  CustomBotton(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    horizontal: 20,
                    text: "Cancel",
                    color: AppColor.lightgreyColor,
                    textColor: AppColor.textColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
