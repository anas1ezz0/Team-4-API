import 'package:flutter/material.dart';
import 'package:team_project/theming/colors.dart';

class PrivaceSwitch extends StatelessWidget {
  const PrivaceSwitch({super.key, required this.value, this.onChange, required this.title, required this.subtitle});

  final bool value;
  final void Function(bool)? onChange;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(
        title,
        style: TextStyle(
            color: AppColor.textColor,
            fontSize: 18,
            fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 13, color: Colors.grey[600]),
      ),
      trailing: Switch(
          activeColor: Theme.of(context).secondaryHeaderColor,
          inactiveThumbColor: Colors.grey[600],
          inactiveTrackColor:
              Theme.of(context).scaffoldBackgroundColor.withOpacity(0.01),
          activeTrackColor: AppColor.mainColor,
          value: value,
          onChanged: onChange),
    );
  }
}
