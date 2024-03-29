import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/core/utilts/widgets/custom_text_form_field.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/view/sign_up/widgets/validator_function.dart';
import '../../../core/app_assets.dart';
import '../../../helpers/spacing.dart';
import '../../../routing/routing.dart';
import '../../../theming/colors.dart';
import '../../sign_in/widgets/custom_button.dart';
import '../../sign_in/widgets/markaz_alaml_text.dart';

class SignUnCard extends StatelessWidget {
  SignUnCard({
    super.key,
  });
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final otpController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 160.h,
      left: 44.w,
      right: 43.w,
      bottom: 45,
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
          padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
          child: SingleChildScrollView(
              child: Form(
            key: formKey,
            child: Column(children: [
              Image.asset(AppAssets.logo),
              const MarkazAlAmalText(),
              verticalSpace(20),
              AppTextFormField(
                  controller: nameController,
                  type: TextInputType.text,
                  hintText: 'Name',
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: AppColor.secondaryColor,
                  ),
                  validator: (String? value) {
                    validatorFunction(value: value!, text: 'your name');
                    return null;
                  }),
              verticalSpace(16),
              AppTextFormField(
                  controller: phoneController,
                  type: TextInputType.phone,
                  hintText: 'Phone',
                  prefixIcon: Icon(
                    Icons.phone,
                    color: AppColor.secondaryColor,
                  ),
                  validator: (String? value) {
                    validatorFunction(value: value!, text: 'phone number');
                    return null;
                  }),
              verticalSpace(16),
              AppTextFormField(
                  controller: otpController,
                  type: TextInputType.number,
                  hintText: 'OTP Code',
                  prefixIcon: Icon(
                    Icons.qr_code_2,
                    color: AppColor.secondaryColor,
                  ),
                  validator: (String? value) {
                    validatorFunction(value: value!, text: 'OTP code');
                    return null;
                  }),
              verticalSpace(16),
              AppTextFormField(
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                  hintText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                    color: AppColor.secondaryColor,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.visibility_off_rounded),
                  ),
                  validator: (String? value) {
                    passConfirmValidatorFunction(
                        value: value!,
                        text: 'your password',
                        passControllerText: passwordController.text,
                        confirmPassControllerText:
                            confirmPasswordController.text);
                    return null;
                  }),
              verticalSpace(16),
              AppTextFormField(
                  controller: confirmPasswordController,
                  type: TextInputType.visiblePassword,
                  hintText: 'Confirm Password',
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                    color: AppColor.secondaryColor,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.visibility_off_rounded),
                  ),
                  validator: (String? value) {
                    passConfirmValidatorFunction(
                        value: value!,
                        text: 'your password',
                        passControllerText: passwordController.text,
                        confirmPassControllerText:
                            confirmPasswordController.text);
                    return null;
                  }),
              verticalSpace(27),
              AppTextButton(
                  onPressed: () {
                    context.pushReplacementNamed(Routes.welcomeSignUpScreen);
                  },
                  buttonText: 'Sign up',
                  textStyle: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.mainColor,
                  )),
              verticalSpace(37),
            ]),
          )),
        ),
      ),
    );
  }
}
