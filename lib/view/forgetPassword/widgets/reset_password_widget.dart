import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/helpers/spacing.dart';
import 'package:team_project/routing/routing.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/forgetPassword/widgets/enter_mail_text.dart';
import 'package:team_project/view/forgetPassword/widgets/forget_password_text_widget.dart';
import 'package:team_project/view/sign_in/widgets/custom_button.dart';
import 'package:team_project/view/sign_in/widgets/custom_text_form_field.dart';

//Enter the code you receive in mail and set the new password for your accountso you can login and access all the features
class ResetPasswordWidget extends StatelessWidget {
  ResetPasswordWidget({super.key});
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ForgetPasswordTextWidget(
            text: "Reset Password",
          ),
          verticalSpace(15),
          EnterMail(
            text:
                "Enter the code you receive in mail\nand set the new password for your\naccountso you can login and access\nall the features",
          ),
          verticalSpace(30),
          Container(
            width: 385.w,
            height: 92.h,
            decoration: BoxDecoration(
                border: Border.all(color: AppColor.mainColor),
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)),
            child: OtpTextField(
              fillColor: AppColor.mainColor,
              numberOfFields: 5,
              textStyle: TextStyle(color: AppColor.mainColor),
              borderColor: Color(0xFF512DA8),
              enabledBorderColor: AppColor.mainColor,
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              }, // end onSubmit
            ),
          ),
          ForgetPasswordTextWidget(
            text: "Password",
          ),
          verticalSpace(15),
          AppTextFormField(
            controller: passwordController,
            type: TextInputType.visiblePassword,
            validator: (String? value) {
              if (value!.isEmpty) {
                return "must enter password";
              }
            },
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: AppColor.mainColor,
                  width: 1.3,
                )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: AppColor.mainColor,
                  width: 1.3,
                )),
            prefixIcon: Icon(
              Icons.email,
              color: AppColor.mainColor,
            ),
            hintText: '',
          ),
          verticalSpace(10),
          ForgetPasswordTextWidget(
            text: "Confirm Password",
          ),
          verticalSpace(15),
          AppTextFormField(
            controller: passwordController,
            type: TextInputType.visiblePassword,
            validator: (String? value) {
              if (value!.isEmpty) {
                return "must enter password";
              }
            },
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: AppColor.mainColor,
                  width: 1.3,
                )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: AppColor.mainColor,
                  width: 1.3,
                )),
            prefixIcon: Icon(
              Icons.email,
              color: AppColor.mainColor,
            ),
            hintText: '',
          ),
          verticalSpace(10),
          AppTextButton(
            buttonHeight: 60,
            buttonWidth: 385,
            borderRadius: 20,
            onPressed: () {
              context.pushNamed(Routes.signInScreen);
            },
            buttonText: "Continue",
            backgroundColor: AppColor.mainColor,
            textStyle: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          )
        ],
      ),
    );
  }
}
