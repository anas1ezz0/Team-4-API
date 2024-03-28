import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_assets.dart';
import '../../../helpers/spacing.dart';
import '../../../theming/colors.dart';
import '../../sign_up/widgets/validator_function.dart';
import 'custom_button.dart';
import 'custom_text_form_field.dart';
import 'forgot_password.dart';
import 'markaz_alaml_text.dart';

class SignInCard extends StatelessWidget {
   SignInCard({
    super.key,
  });

  var emailController = TextEditingController();
  var passwordController = TextEditingController();


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
            child: Column(children: [
              Image.asset(AppAssets.logo),
              const MarkazAlAmalText(),
              verticalSpace(20),
              AppTextFormField(
                controller: emailController,
                type: TextInputType.emailAddress,
                hintText: 'Email',
                prefixIcon:  Icon(
                  Icons.email_outlined,
                  color: AppColor.secondaryColor,
                ),
                validator: (String? value ) {
                  validatorFunction(value: value!, text: 'your email address');
                },
              ),
              verticalSpace(16),
              AppTextFormField(
                 controller: passwordController,
                type: TextInputType.visiblePassword,
                hintText: 'Password',
                prefixIcon:  Icon(
                  Icons.lock_outline_rounded,
                  color: AppColor.secondaryColor,
                ),
                suffixIcon:   IconButton(
                  onPressed: () {},
                  icon: const Icon( Icons.visibility_off_rounded),
                ) ,
                validator: (String? value){
                  validatorFunction(value: value!, text: 'your password');

                },
              ),
              verticalSpace(27),
              AppTextButton(
                  onPressed: () {},
                  buttonText: 'Sign in',
                  textStyle: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.mainColor,
                  )),
              verticalSpace(9),
              const ForgotPasswordWidget(),
              verticalSpace(37),
            ]),
          ),
        ),
      ),
    );
  }
}
