import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../profile_page/data/profile_edit_model.dart';

class ProfileEditItems extends StatelessWidget {
  const ProfileEditItems({super.key});
  static List<ProfileEditModel> items = [
    ProfileEditModel(hintText: 'Full Name', text: 'Ammar ahmed'),
    ProfileEditModel(hintText: 'Phone number', text: '01078654434'),
    ProfileEditModel(hintText: 'Email', text: 'ammar21@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              items[index].hintText,
              style: TextStyle(
                color: const Color(0xffBDCAD6),
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Divider(
              endIndent: 20,
            ),
            Text(
              items[index].text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      itemCount: items.length,
    );
  }
}
