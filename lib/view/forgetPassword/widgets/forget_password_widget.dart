import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/helpers/spacing.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/forgetPassword/widgets/forget_password_bottom_sheet.dart';
import 'package:team_project/view/forgetPassword/widgets/enter_mail_text.dart';
import 'package:team_project/view/forgetPassword/widgets/forget_password_text_widget.dart';
import 'package:team_project/view/sign_in/widgets/custom_button.dart';
import 'package:team_project/view/sign_in/widgets/custom_text_form_field.dart';

class ForgetPasswordWidget extends StatelessWidget {
  ForgetPasswordWidget({super.key});
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ForgetPasswordTextWidget(
          text: "Forget Password",
        ),
        verticalSpace(15),
        EnterMail(
          text:
              "Enter your email for verification process we \nwill send 5 digits code to your email",
        ),
        verticalSpace(30),
        ForgetPasswordTextWidget(
          text: "Email",
        ),
        verticalSpace(15),
        AppTextFormField(
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
          controller: passwordController,
          type: TextInputType.visiblePassword,
          validator: (String? value) {
            if (value!.isEmpty) {
              return "email must not be empty";
            }
          },
        ),
        verticalSpace(10),
        AppTextButton(
          buttonHeight: 60,
          buttonWidth: 385,
          borderRadius: 20,
          onPressed: () {
            ModalBottomSheet.resetPasswordBottom(context);
            // if (formKey.currentState!.validate()) {
            //   ModalBottomSheet.resetPasswordBottom(context);
            // }
          },
          buttonText: "Continue",
          backgroundColor: AppColor.mainColor,
          textStyle: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white),
        )
      ],
    );
  }
}
