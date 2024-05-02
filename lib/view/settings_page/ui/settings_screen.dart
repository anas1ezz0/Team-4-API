import 'package:flutter/material.dart';
import 'package:team_project/helpers/spacing.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/settings_page/widgets/account_setting_body.dart';
import 'package:team_project/view/settings_page/widgets/general_setting_body.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondaryColor,
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(color: AppColor.secondaryColor),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Account settings',
                style: TextStyle(
                    color: AppColor.textColor,
                    fontSize: 27,
                    fontWeight: FontWeight.w700),
              ),
              const AccountSettingBody(),
              verticalSpace(20),
              Divider(
                color: AppColor.textColor,
                thickness: 1.2,
              ),
              verticalSpace(20),
              Text(
                'General',
                style: TextStyle(
                    color: AppColor.textColor,
                    fontSize: 27,
                    fontWeight: FontWeight.w700),
              ),
              const GeneralSettingsBody()
            ],
          ),
        ),
      ),
    );
  }
}
