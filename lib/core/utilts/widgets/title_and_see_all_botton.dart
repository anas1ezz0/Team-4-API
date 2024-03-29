import 'package:flutter/material.dart';
import 'package:team_project/theming/colors.dart';

class TitleAndSeeAllBottonWidget extends StatelessWidget {
  final String title;
  final String seeAllText;
  final Icon seeAllIcon;
  final void Function() onTap;

  const TitleAndSeeAllBottonWidget({
    super.key,
    required this.title,
    required this.seeAllText,
    required this.seeAllIcon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            color: AppColor.textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Row(
          children: [
            Text(
              seeAllText,
              style: TextStyle(
                color: AppColor.textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            seeAllIcon
          ],
        )
      ],
    );
  }
}
