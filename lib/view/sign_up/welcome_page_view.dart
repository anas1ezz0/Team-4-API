import 'dart:async';

import 'package:flutter/material.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/helpers/sizes.dart';
import 'package:team_project/helpers/spacing.dart';
import 'package:team_project/routing/routing.dart';
import 'package:team_project/theming/colors.dart';

class WelcomeSignUpPageView extends StatefulWidget {
  const WelcomeSignUpPageView({super.key});

  @override
  State<WelcomeSignUpPageView> createState() => _WelcomeSignUpPageViewState();
}

class _WelcomeSignUpPageViewState extends State<WelcomeSignUpPageView> {

  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      context.pushReplacementNamed(Routes.homeScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondaryColor,
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 30, end: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: width(context, 4),
              backgroundColor: AppColor.mainColor,
              child: Icon(
                Icons.done,
                color: AppColor.secondaryColor,
                size: width(context, 4),
              ),
            ),
            verticalSpace(47.13),
            Center(
              child: Text(
                "Congratulations",
                style: TextStyle(
                    fontSize: 40,
                    color: AppColor.textColor,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.5
                ),
              ),
            ),
            verticalSpace(12.13),
            Center(
              child: Text(
                "Your Registration Is Success \n Welcome to our app",
                style: TextStyle(
                    color: AppColor.textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5

                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );

  }
}

