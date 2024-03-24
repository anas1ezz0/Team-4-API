import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/helpers/extentions.dart';

import '../../../routing/routing.dart';

class CustomHaveAnAccountAndSignUp extends StatelessWidget {
  const CustomHaveAnAccountAndSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: "Don’t have an account?",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: const Color(0xff336EA6))),
        TextSpan(
            text: " Sign Up",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: const Color(0xff233B55))),
      ]),
    );
  }
}
