import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../theming/colors.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
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
            'Edit Profile',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(children: [
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
          TextFormField(
              decoration: InputDecoration(
            prefixIcon: const Icon(
              FontAwesomeIcons.user,
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(14.r)),
          )),
        ]),
      ),
    );
  }
}
