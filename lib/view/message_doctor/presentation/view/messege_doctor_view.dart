import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/core/utilts/widgets/custom_text_form_field.dart';
import 'package:team_project/generated/app_assets.dart';
import 'package:team_project/helpers/extentions.dart';
import '../../../../theming/colors.dart';
import '../../../doctor_profile/presentation/view/widgets/doctor_name.dart';
import '../widgets/doctor_message_container.dart';
import '../widgets/patient_meassage_container2.dart';
import '../widgets/patient_message_container_item.dart';

class MessageDoctorView extends StatelessWidget {
  const MessageDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        title: DoctorName(
          color: AppColor.secondaryColor,
        ),
        leading: InkWell(
          onTap: () {
            context.pop();
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: AppColor.secondaryColor,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.only(bottom: 10.h),
            child: CircleAvatar(
                radius: 35,
                backgroundColor: AppColor.transparentColor,
                child: ClipOval(
                  child: Image.asset(
                    AppAssets.doctorImage,
                    fit: BoxFit.fitHeight,
                  ),
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding:
              EdgeInsetsDirectional.only(top: 60.h, start: 15.w, end: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FirstPatientMessageContainerItem(),
              SizedBox(
                height: 10.h,
              ),
              const SecondPatientMessageContainerItem(),
              SizedBox(
                height: 10.h,
              ),
              const DoctorMessageContainerItem(),
              SizedBox(
                height: 350.h,
              ),
              AppTextFormField(
                hintText: "Type A Message",
                hintStyle: TextStyle(color: AppColor.textColor),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(
                      color: AppColor.starGreyColor,
                      width: 1.3,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(
                      color: AppColor.starGreyColor,
                      width: 1.3,
                    )),
                suffixIcon: Padding(
                  padding: EdgeInsetsDirectional.only(end: 10.w),
                  child: CircleAvatar(
                    backgroundColor: AppColor.mainColor,
                    child: Icon(
                      Icons.send,
                      color: AppColor.secondaryColor,
                    ),
                  ),
                ),
                type: TextInputType.text,
                validator: (String? value) {
                  return null;
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
