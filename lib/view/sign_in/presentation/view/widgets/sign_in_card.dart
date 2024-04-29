import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/core/utilts/widgets/custom_text_form_field.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/routing/routing.dart';
import '../../../../../generated/app_assets.dart';
import '../../../../../helpers/spacing.dart';
import '../../../../../theming/colors.dart';
import '../../view_model/sign_in_cubit.dart';
import 'custom_button.dart';
import 'forgot_password.dart';
import 'markaz_alaml_text.dart';

class SignInCard extends StatelessWidget {
  const SignInCard({
    super.key,
  });

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
              key: BlocProvider.of<SignInCubit>(context).formKey,
              child: Column(children: [
                Image.asset(AppAssets.logo),
                const MarkazAlAmalText(),
                verticalSpace(20),
                AppTextFormField(
                  controller: context.read<SignInCubit>().emailController,
                  type: TextInputType.emailAddress,
                  hintText: 'Email',
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: AppColor.secondaryColor,
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'please enter your email';
                    }
                    return null;
                  },
                ),
                verticalSpace(16),
                BlocBuilder<SignInCubit, SignInState>(
                  builder: (context, state) {
                    return AppTextFormField(
                      controller:
                          context.read<SignInCubit>().passwordController,
                      type: TextInputType.visiblePassword,
                      hintText: 'Password',
                      isObscureText:
                          BlocProvider.of<SignInCubit>(context).isChanged,
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: AppColor.secondaryColor,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          BlocProvider.of<SignInCubit>(context)
                              .changePasswordVisibility();
                        },
                        icon: Icon(
                          BlocProvider.of<SignInCubit>(context).isChanged
                              ? Icons.visibility_off_rounded
                              : Icons.visibility_rounded,
                          color: Colors.white,
                        ),
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'please enter your password';
                        }
                        return null;
                      },
                    );
                  },
                ),
                verticalSpace(27),
                BlocConsumer<SignInCubit, SignInState>(
                  listener: (context, state) {
                    if (state is SignInFailed) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(state.errorMessage)),
                      );
                    } else if (state is SignInSuccess) {
                      context.pushReplacementNamed(Routes.allScreens);
                    }
                  },
                  builder: (context, state) {
                    return state is SignInLoading
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : AppTextButton(
                            onPressed: () async {
                              if (BlocProvider.of<SignInCubit>(context)
                                  .formKey
                                  .currentState!
                                  .validate()) {
                                BlocProvider.of<SignInCubit>(context)
                                    .signInByEmail();
                              }
                            },
                            buttonText: 'Sign in',
                            textStyle: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColor.mainColor,
                            ));
                  },
                ),
                verticalSpace(9),
                const ForgotPasswordWidget(),
                verticalSpace(37),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
