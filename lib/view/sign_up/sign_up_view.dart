import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_project/core/cubit/sign_up/sign_up/cubit.dart';
import 'package:team_project/core/cubit/sign_up/sign_up/states.dart';
import 'package:team_project/view/sign_up/widgets/sign_up_card.dart';
import '../../theming/colors.dart';
import '../sign_in/presentation/view/widgets/circular_white_background.dart';
import '../sign_in/presentation/view/widgets/dont_have_an_account_signup.dart';
import '../sign_in/presentation/view/widgets/lets_start_text_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: AppColor.mainColor,
              body: Stack(
                alignment: Alignment.center,
                children: [
                  const LetsStartText(
                    text: 'up',
                  ),
                  const CircularWhiteBackground(),
                  SignUnCard(),
                  const Positioned(
                      bottom: 20,
                      child: CustomHaveAnAccountAndSignUp(
                        text: 'in',
                        haveAccountOrNot: 'Already',
                      ))
                ],
              ));
        },
      ),
    );
  }
}
