import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/view/doctor_profile/presentation/view/widgets/doctor_category_text.dart';
import '../../../../../theming/colors.dart';
import 'book_date_list_item.dart';
import 'doctor_name.dart';
import 'doctor_profile_brief.dart';
import 'doctor_profile_buttons_section.dart';
import 'doctor_rate_item/doctor_rate_item.dart';
import 'doctor_time_section_header.dart';

class DoctorInfoContainer extends StatelessWidget {
  const DoctorInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColor.secondaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Padding(
        padding:
        EdgeInsetsDirectional.only(top: 10.h, start: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DoctorName(color: Colors.black,),
            const DoctorCategoryText(),
            const DoctorRateItem(),
            const DoctorProfileBrief(),
            DoctorSectionsHeader(text: 'Book a Date',),
            SelectDateListItem(text: '8, Mar',),
            DoctorSectionsHeader(text: 'Select a Time',),
            SelectDateListItem(text: '12:30',),
            const DoctorProfileButtonsSection(),
          ],
        ),
      ),
    );
  }
}
