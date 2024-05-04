import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../theming/colors.dart';

class SelectDateListItem extends StatelessWidget {
  SelectDateListItem({super.key, required this.text});

  String? text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: 5.h, bottom: 5.h),
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            width: 82.w,
            decoration: BoxDecoration(
              color: AppColor.lightGreyColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                text!,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.textColor),
              ),
            ),
          ),
          itemCount: 10,
          separatorBuilder: (context, index) => SizedBox(
            width: 7.h,
          ),
        ),
      ),
    );
  }
}
