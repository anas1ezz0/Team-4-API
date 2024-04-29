import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/profile_page/widgets/profile_items_list.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Center(
            child: Text(
              'Profile',
              style: TextStyle(
                color: const Color(0xff233B55),
                fontSize: 26.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          CircleAvatar(
              radius: 70.r,
              backgroundColor: AppColor.mainColor,
              child: const FaIcon(
                FontAwesomeIcons.user,
                size: 60,
                color: Colors.white,
              )),
          const SizedBox(
            height: 14,
          ),
          Center(
            child: Text(
              'Ammar Ahmed',
              style: TextStyle(
                color: const Color(0xff233B55),
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const ProfileItemsList()
        ],
      ),
    );
  }
}
