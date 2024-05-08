import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/helpers/spacing.dart';
import 'package:team_project/view/settings_page/ui/widgets/bottom_sheet_contents.dart';
import 'package:team_project/view/settings_page/widgets/settings_item.dart';

class AccountSettingBody extends StatelessWidget {
  const AccountSettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingsItem(
            title: const Text('Profile Information'),
            subtitle: const Text('Name, Email, Security'),
            leading: Image.asset('assets/images/Group 14003.png'),
          ),
          GestureDetector(
            onTap: () => context.pushNamed('privacyScreen'),
            child: SettingsItem(
              title: const Text('Privacy '),
              subtitle: const Text('Control your privacy'),
              leading: Image.asset('assets/images/Group 14004.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const BottomSheetContents();
                  });
            },
            child: SettingsItem(
              title: const Text('Change Password'),
              subtitle: const Text('Change your current password'),
              leading: Image.asset('assets/images/Group 14005.png'),
            ),
          ),
        ],
      ),
    );
  }
}
