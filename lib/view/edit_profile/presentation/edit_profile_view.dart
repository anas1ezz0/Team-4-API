import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../theming/colors.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 25,
          ),
          Center(
            child: CircleAvatar(
                radius: 70.r,
                backgroundColor: AppColor.mainColor,
                child: const FaIcon(
                  FontAwesomeIcons.user,
                  size: 60,
                  color: Colors.white,
                )),
          ),
          const SizedBox(
            height: 51,
          ),
          Text(
            'Full Name',
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff233B55)),
          ),
          TextFormField(
              initialValue: 'Ammar Ahmed',
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  FontAwesomeIcons.user,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.r)),
              )),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Phone Number',
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff233B55)),
          ),
          TextFormField(
              initialValue: '01078654434',
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  color: Color(0xff233B55),
                  FontAwesomeIcons.user,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.r)),
              )),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Email',
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff233B55)),
          ),
          TextFormField(
              initialValue: 'ammar21@gmail.com',
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  size: 30,
                  Icons.email_outlined,
                  color: Color(0xff233B55),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.r)),
              )),
        ]),
      ),
    );
  }
}
