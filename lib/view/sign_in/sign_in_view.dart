import 'package:flutter/material.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/sign_in/widgets/circular_white_background.dart';
import 'package:team_project/view/sign_in/widgets/dont_have_an_account_signup.dart';
import 'package:team_project/view/sign_in/widgets/lets_start_text_widget.dart';
import 'package:team_project/view/sign_in/widgets/sign_in_card.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColor.mainColor,
          body: const Stack(
            alignment: Alignment.center,
            children: [
              LetsStartText(),
              CircularWhiteBackground(),
              SignInCard(),
              Positioned(bottom: 20, child: CustomHaveAnAccountAndSignUp())
            ],
          )),
    );
  }
}
