import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/sign_up/presentation/view/widgets/pre_sign_up_card.dart';
import '../../../sign_in/presentation/view/widgets/circular_white_background.dart';
import '../../../sign_in/presentation/view/widgets/lets_start_text_widget.dart';
import '../view_model/pre_sign_up/cubit.dart';
import '../view_model/pre_sign_up/states.dart';

class PreSignUpView extends StatelessWidget {
  PreSignUpView({super.key});

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PreSignUpCubit(),
      child: BlocConsumer<PreSignUpCubit, PreSignUpStates>(
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
                  PreSignUpCard(),
                ],
              ));
        },
      ),
    );
  }
}
