import 'package:flutter/material.dart';
import 'package:team_project/helpers/network/local/cache_helper.dart';
import 'package:team_project/helpers/spacing.dart';
import 'package:team_project/theming/colors.dart';

import '../../../core/app_assets.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.secondaryColor,
      elevation: 0.0,
      leading: Image.asset(
        AppAssets.logo,
      ),
      title: Image.asset(
        AppAssets.markazElAmal,
        height: 15,
      ),
      actions: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: AppColor.mainColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
            ),
          ),
        ),
        horizontalSpace(10),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: AppColor.mainColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            onPressed: () {
              CacheHelper.removeData(key: "onBoarding");
              CacheHelper.removeData(key: "token");
            },
            icon: const Icon(
              size: 20,
              Icons.messenger_outline_sharp,
              color: Colors.white,
            ),
          ),
        ),
        horizontalSpace(10),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
