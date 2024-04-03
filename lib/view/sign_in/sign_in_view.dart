import 'package:flutter/material.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/sign_in/presentation/view/widgets/circular_white_background.dart';
import 'package:team_project/view/sign_in/presentation/view/widgets/dont_have_an_account_signup.dart';
import 'package:team_project/view/sign_in/presentation/view/widgets/lets_start_text_widget.dart';
import 'package:team_project/view/sign_in/presentation/view/widgets/sign_in_card.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.mainColor,
        body: const Stack(
          alignment: Alignment.center,
          children: [
            LetsStartText(
              text: 'in',
            ),
            CircularWhiteBackground(),
            SignInCard(),
            Positioned(
                bottom: 20,
                child: CustomHaveAnAccountAndSignUp(
                  text: 'Up',
                  haveAccountOrNot: 'Don’t',
                ))
          ],
        ));
  }
}
