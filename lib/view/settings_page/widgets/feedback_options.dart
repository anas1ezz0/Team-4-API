import 'package:flutter/material.dart';
import 'package:team_project/helpers/spacing.dart';
import 'package:team_project/theming/colors.dart';

class FeedBackOptions extends StatelessWidget {
  const FeedBackOptions({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: AppColor.secondaryColor,
              )),
        ),
        horizontalSpace(8),
        Text(
          text,
          style: TextStyle(
            color: AppColor.secondaryColor,
          ),
        )
      ],
    );
  }
}
