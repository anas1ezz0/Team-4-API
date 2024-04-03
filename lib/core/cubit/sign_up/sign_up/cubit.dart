// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_project/core/cubit/end_points.dart';
import 'package:team_project/core/cubit/sign_up/sign_up/states.dart';
import 'package:team_project/models/sign_up_models/sign_up_model.dart';

import '../../../../helpers/network/remote/dio_helper.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitialState());

  static SignUpCubit get(context) => BlocProvider.of(context);

  SignUpModel? signUpModel;

  void userSignUp({
    required String email,
    required String name,
    required String phone,
    required String otp,
    required String password,
    required String confirmPassword,
  }) {
    emit(SignUpLoadingState());
    var formData = FormData.fromMap({"email": email});
    DioHelper.postData(
      url: SIGN_UP,
      data: {"email": email},
      query: {
        "ln": "en",
      },
    ).then((value) {
      signUpModel = SignUpModel.fromJson(value.data);
      emit(SignUpSuccessState(signUpModel!));
    }).catchError((error) {
      print(error.toString());
      emit(SignUpErrorState(error.toString()));
    });
  }

  IconData suffix = Icons.visibility_rounded;
  bool passwordObsecureText = true;

  void changePasswordVisibility() {
    passwordObsecureText = !passwordObsecureText;
    suffix = passwordObsecureText
        ? Icons.visibility_rounded
        : Icons.visibility_off_rounded;
    emit(SignUpPasswordVisibilityState());
  }

  IconData confirmSuffix = Icons.visibility_rounded;
  bool confirmObsecureText = true;

  void changeConfirmPasswordVisibility() {
    confirmObsecureText = !confirmObsecureText;
    confirmSuffix = confirmObsecureText
        ? Icons.visibility_rounded
        : Icons.visibility_off_rounded;
    emit(SignUpConfirmPasswordVisibilityState());
  }
}
