import 'package:flutter/material.dart';
import 'package:team_project/core/app_assets.dart';

class HomePageImageHeader extends StatelessWidget {
  const HomePageImageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Image.asset(
        AppAssets.homePageHeaderImage,
      ),
    );
  }
}
