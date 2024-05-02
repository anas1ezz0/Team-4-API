import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/view/doctors_category/presentation/widgets/rating_star_list_view.dart';

import '../../../../routing/routing.dart';
import '../../../../theming/colors.dart';

class DoctorCategoryItem extends StatelessWidget {
  const DoctorCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.pushNamed(Routes.doctorProfileView);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 13),
        height: 190.h,
        width: 135.w,
        decoration: BoxDecoration(
          color: AppColor.mainColor,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Image.asset('assets/images/doctor_category.png'),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Dr: Mohamed saad',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            '5 Years Experiece',
            style: TextStyle(
                color: const Color(0xffBDCAD6),
                fontSize: 10.sp,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 8.h,
          ),
          const RatingStarListView()
        ]),
      ),
    );
  }
}
