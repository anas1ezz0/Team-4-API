import 'package:flutter/material.dart';
import 'package:team_project/theming/colors.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leading,
  });
  final Widget title;
  final Widget subtitle;
  final Widget leading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black)),
          child: ListTile(
            title: title,
            titleTextStyle: TextStyle(
                fontSize: 20,
                color: AppColor.textColor,
                fontWeight: FontWeight.w700),
            subtitle: subtitle,
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios_outlined),
            ),
            leading: leading,
          )),
    );
  }
}
