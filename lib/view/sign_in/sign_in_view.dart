import 'package:flutter/material.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/sign_in/presentation/widgets/circular_white_background.dart';
import 'package:team_project/view/sign_in/presentation/widgets/dont_have_an_account_signup.dart';
import 'package:team_project/view/sign_in/presentation/widgets/lets_start_text_widget.dart';
import 'package:team_project/view/sign_in/presentation/widgets/sign_in_card.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.mainColor,
        body: Stack(
          alignment: Alignment.center,
          children: [
            const LetsStartText(
              text: 'in',
            ),
            const CircularWhiteBackground(),
            SignInCard(),
            const Positioned(
                bottom: 20,
                child: CustomHaveAnAccountAndSignUp(
                  text: 'Up',
                  haveAccountOrNot: 'Don’t',
                ))
          ],
        ));
  }
}
