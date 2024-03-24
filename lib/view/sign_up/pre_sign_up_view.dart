import 'package:flutter/material.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/sign_up/widgets/pre_sign_up_card.dart';
import '../sign_in/widgets/circular_white_background.dart';
import '../sign_in/widgets/lets_start_text_widget.dart';

class PreSignUpView extends StatelessWidget {
  const PreSignUpView({super.key});

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
             PreSignUpCard(),
          ],
        ));
  }
}
