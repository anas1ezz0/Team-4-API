import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../theming/colors.dart';

class BookDoctorItem extends StatelessWidget {
  const BookDoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 150.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r), color: AppColor.mainColor),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 27,
            vertical: 23,
          ),
          child: Column(
            children: [
              Text(
                'Dr: Osama ali',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Speech',
                style: TextStyle(
                  color: const Color(0xffBDCAD6),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                width: 70.w,
                height: 18.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(width: 1, color: Colors.white)),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    '4.9',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 13,
                  )
                ]),
              )
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 9),
          child: Image.asset('assets/images/dr_osama_image.png'),
        ),
      ]),
    );
  }
}
