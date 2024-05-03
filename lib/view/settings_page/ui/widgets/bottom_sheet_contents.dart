import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/theming/colors.dart';

import '../../../../helpers/spacing.dart';
import 'confirm_and_cancel_buttons.dart';

class BottomSheetContents extends StatelessWidget {
  const BottomSheetContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(41),
          Text(
            'Change Password',
            style: TextStyle(
              color: const Color(0xff233B55),
              fontSize: 32.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          verticalSpace(35),
          Text(
            'Current Password',
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff233B55)),
          ),
          TextFormField(
              initialValue: '***********',
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    size: 40,
                    color: Color(0xff233B55),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.r)),
                  suffixIcon: const Icon(
                    Icons.visibility_off_rounded,
                    color: Color(0xff233B55),
                  ))),
          verticalSpace(10),
          Text(
            'New Password',
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff233B55)),
          ),
          TextFormField(
              initialValue: '***************',
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.visibility_off_rounded,
                  color: Color(0xff233B55),
                ),
                prefixIcon: const Icon(Icons.lock_outline_rounded,
                    size: 40, color: Color(0xff233B55)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.r)),
              )),
          verticalSpace(10),
          Text(
            'Confirm New Password',
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff233B55)),
          ),
          TextFormField(
              initialValue: '***********',
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.visibility_off_rounded,
                  color: Color(0xff233B55),
                ),
                prefixIcon: const Icon(Icons.lock_outline_rounded,
                    size: 40, color: Color(0xff233B55)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.r)),
              )),
          verticalSpace(20),
          const Expanded(child: ConfirmAndCancelButtons()),
        ],
      ),
    );
  }
}
