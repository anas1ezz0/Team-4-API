// ignore_for_file: avoid_print
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/core/cubit/sign_up/pre_sign_up/cubit.dart';
import 'package:team_project/core/cubit/sign_up/pre_sign_up/states.dart';
import 'package:team_project/core/utilts/widgets/custom_text_form_field.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/helpers/network/local/cache_helper.dart';
import 'package:team_project/routing/routing.dart';
import '../../../core/app_assets.dart';
import '../../../helpers/constants.dart';
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
    return BlocConsumer<PreSignUpCubit, PreSignUpStates>(
      listener: (context, state) {
        if (state is PreSignUpSuccessState) {
          print(state.preSignUpModel.message);
          print(state.preSignUpModel.token);
          CacheHelper.saveData(key: "token", value: state.preSignUpModel.token)
              .then((value) {
            token = state.preSignUpModel.token;
            Timer(const Duration(seconds: 2), () {
              context.pushReplacementNamed(Routes.signUpScreen);
            });
          });
        }
      },
      builder: (context, state) {
        var cubit = PreSignUpCubit.get(context);
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
                      if (value!.isEmpty) {
                        return "please enter your email address";
                      }
                      return null;
                    },
                  ),
                  verticalSpace(25),
                  AppTextButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          cubit.userPreSignUp(email: emailController.text);
                        }
                      },
                      buttonText: 'Send OTP',
                      textStyle: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.mainColor,
                      )),
                  verticalSpace(30),
                  if (state is PreSignUpSuccessState)
                    Padding(
                      padding: const EdgeInsetsDirectional.only(bottom: 20),
                      child: Text(
                        " ${cubit.preSignUpModel!.message} please ..."
                            .toUpperCase(),
                        style: TextStyle(color: AppColor.secondaryColor),
                      ),
                    )
                ]),
              )),
            ),
          ),
        );
      },
    );
  }
}
