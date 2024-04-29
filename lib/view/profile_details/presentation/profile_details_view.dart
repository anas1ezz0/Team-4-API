import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/profile_details/presentation/widgets/profile_edit_items.dart';
import '../../../routing/routing.dart';

class ProfileDetailsView extends StatelessWidget {
  const ProfileDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          actions: [
            TextButton(
                onPressed: () {
                  context.pushNamed(Routes.editProfileScreen);
                },
                child: Text(
                  'Edit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ))
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          backgroundColor: AppColor.mainColor,
          title: Text(
            'Profile Details',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
            ),
          )),
      body: Column(children: [
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
        const Expanded(child: ProfileEditItems())
      ]),
    );
  }
}
