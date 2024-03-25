import 'package:flutter/material.dart';
import 'package:team_project/view/sign_up/widgets/sign_up_card.dart';
import '../../theming/colors.dart';
import '../sign_in/widgets/circular_white_background.dart';
import '../sign_in/widgets/dont_have_an_account_signup.dart';
import '../sign_in/widgets/lets_start_text_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.mainColor,
        body: Stack(
          alignment: Alignment.center,
          children: [
            LetsStartText(
              text: 'up',
            ),
            const CircularWhiteBackground(),
            SignUnCard(),
            Positioned(
                bottom: 20,
                child: CustomHaveAnAccountAndSignUp(
                  text: 'in',
                  haveAccountOrNot: 'Already',
                ))
          ],
        ));
  }
}
