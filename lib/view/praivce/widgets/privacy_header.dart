import 'package:flutter/material.dart';
import 'package:team_project/theming/colors.dart';

class PrivacyHeader extends StatelessWidget {
  const PrivacyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            'Privacy Preferences',
            style: TextStyle(
                color: AppColor.textColor,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          'Hi there, we don\'t want to keep any info that you\'re not comfortable sharing. We want our users to have 100% control of their informariton 100% of the time.Toggle below what you\'d like to share and not share baring in mind the more you share with us the more tailored user experience you\'ll receive - thanks!',
          style: TextStyle(color: AppColor.textColor, fontSize: 17),
        ),
      ],
    );
  }
}
