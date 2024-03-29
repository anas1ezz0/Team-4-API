import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/core/utilts/widgets/custom_text_form_field.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/routing/routing.dart';
import 'package:team_project/view/sign_up/widgets/validator_function.dart';
import '../../../core/app_assets.dart';
import '../../../helpers/spacing.dart';
import '../../../theming/colors.dart';
import '../../sign_in/widgets/custom_button.dart';
import '../../sign_in/widgets/markaz_alaml_text.dart';

class PreSignUpCard extends StatelessWidget {
  PreSignUpCard({
    super.key,
  });

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 224.h,
      left: 44.w,
      right: 43.w,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.secondaryColor,
            width: 8,
          ),
          color: AppColor.mainColor,
          borderRadius: BorderRadius.circular(30.r),
        ),

        // height: 400.h,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
              child: Form(
            key: formKey,
            child: Column(children: [
              Image.asset(AppAssets.logo),
              const MarkazAlAmalText(),
              verticalSpace(20),
              AppTextFormField(
                controller: emailController,
                type: TextInputType.emailAddress,
                hintText: 'Email',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: AppColor.secondaryColor,
                ),
                validator: (String? value) {
                  validatorFunction(value: value!, text: 'your email address');
                  return null;
                },
              ),
              verticalSpace(25),
              AppTextButton(
                  onPressed: () {
                    context.pushReplacementNamed(Routes.signUpScreen);
                  },
                  buttonText: 'Send OTP',
                  textStyle: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.mainColor,
                  )),
              verticalSpace(30),
            ]),
          )),
        ),
      ),
    );
  }
}
