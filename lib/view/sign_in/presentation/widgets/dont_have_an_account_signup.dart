import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/helpers/extentions.dart';

import '../../../../routing/routing.dart';

class CustomHaveAnAccountAndSignUp extends StatelessWidget {
  const CustomHaveAnAccountAndSignUp(
      {super.key, required this.text, required this.haveAccountOrNot});

  final String? text;
  final String? haveAccountOrNot;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: "$haveAccountOrNot have an account?",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: const Color(0xff336EA6))),
        TextSpan(
            text: " Sign $text",
            recognizer: TapGestureRecognizer()
              ..onTap = () => text == "Up"
                  ? context.pushReplacementNamed(Routes.preSignUpScreen)
                  : context.pushReplacementNamed(Routes.signInScreen),
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: const Color(0xff233B55))),
      ]),
    );
  }
}
