import 'package:flutter/material.dart';
import 'package:team_project/view/settings_page/widgets/feedback.dart';
import 'package:team_project/view/settings_page/widgets/rate_dialog.dart';
import 'package:team_project/view/settings_page/widgets/settings_item.dart';

import 'feedback.dart';

class GeneralSettingsBody extends StatelessWidget {
  const GeneralSettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            rateDialog(context);
          },
          child: SettingsItem(
            title: const Text('Rate our App'),
            subtitle: const Text('Rate & REview us'),
            leading: Image.asset('assets/images/Group 14009.png'),
          ),
        ),
        GestureDetector(
          onTap: () {
            feedBackDialog(context);
          },
          child: SettingsItem(
            title: const Text('Send Feedback'),
            subtitle: const Text('Share your thought'),
            leading: Image.asset('assets/images/Group 14010.png'),
          ),
        ),
      ],
    );
  }
}
