import 'package:flutter/material.dart';
import 'package:team_project/helpers/extentions.dart';
import '../../../../routing/routing.dart';

class OnBoardingHeader extends StatelessWidget {
  const OnBoardingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            'AR',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: GestureDetector(
            onTap: () {
              context.pushReplacementNamed(Routes.signInScreen);
            },
            child: const Text(
              'Skip',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 25),
            ),
          ),
        ),
      ],
    );
  }
}
