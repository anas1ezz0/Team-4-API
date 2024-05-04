import 'package:flutter/material.dart';
import 'package:team_project/theming/colors.dart';

class StarsRate extends StatelessWidget {
  const StarsRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: AppColor.yellowColor,
          size: 40,
        ),
        Icon(
          Icons.star,
          color: AppColor.yellowColor,
          size: 40,
        ),
        Icon(
          Icons.star,
          color: AppColor.yellowColor,
          size: 40,
        ),
        Icon(
          Icons.star,
          color: AppColor.starGreyColor,
          size: 40,
        ),
        Icon(
          Icons.star,
          color: AppColor.starGreyColor,
          size: 40,
        ),
      ],
    );
  }
}
