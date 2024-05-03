import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../helpers/spacing.dart';
import '../../../../theming/colors.dart';

class ConfirmAndCancelButtons extends StatelessWidget {
  const ConfirmAndCancelButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                8.r,
              )),
              fixedSize: const Size(154, 43),
              backgroundColor: AppColor.mainColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Confirm',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            )),
        horizontalSpace(58),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                8.r,
              )),
              fixedSize: const Size(154, 43),
              backgroundColor: const Color(0xffBDCAD6),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Cancel',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            )),
      ],
    );
  }
}
