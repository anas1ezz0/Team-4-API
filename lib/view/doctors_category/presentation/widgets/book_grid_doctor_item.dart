import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/theming/colors.dart';

import '../../../../routing/routing.dart';

class GridBookDoctorItem extends StatelessWidget {
  const GridBookDoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.pushNamed(Routes.doctorProfileView);
      },
      child: Container(
          width: 187.w,
          height: 180.h,
          decoration: BoxDecoration(
              color: AppColor.mainColor,
              borderRadius: BorderRadius.circular(
                16.r,
              )),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 9),
                child: Image.asset('assets/images/dr_osama_image.png'),
              ),
              Text(
                'Dr: Osama ali',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const Text(
                'Speech',
                style: TextStyle(
                  color: Color(0xffBDCAD6),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                width: 70.w,
                height: 20.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(width: 1, color: Colors.white)),
                child:
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    '4.9',
                    style: TextStyle(
                        fontSize: 16.sp,
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
              ),
            ],
          )),
    );
  }
}
