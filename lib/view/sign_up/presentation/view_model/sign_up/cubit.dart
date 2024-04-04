// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:team_project/core/cubit/end_points.dart';
import 'package:team_project/view/sign_up/presentation/view_model/sign_up/states.dart';
import '../../../../../helpers/constants.dart';
import '../../../../../helpers/network/remote/dio_helper.dart';
import '../../../data/models/sign_up_model.dart';


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
  }) async {
    emit(SignUpLoadingState());

    DioHelper.postData(
      url: SIGN_UP,
      isFormData: true,
      data: {
        "email": email,
        "password": password,
        "cPassword": confirmPassword,
        "phone": phone,
        "name": name,
        "OTP": otp,
        "image": await uploadImageToAPI(profilePic!),
        "token": token,
      },
    ).then((value) {
      signUpModel = SignUpModel.fromJson(value.data);
      print(
          ":::::::::::::::::::::::::::SIGN UP RESPONSE ${value.data}:::::::::::::::::::::::::::");
      emit(SignUpSuccessState(signUpModel!));
    }).catchError((error) {
      print(error.toString());
      emit(SignUpErrorState(error.toString()));
    });
  }

  XFile? profilePic;
  uploadProfilePic(XFile image) {
    profilePic = image;
    emit(UploadProfilePicSuccessState());
  }

  Future uploadImageToAPI(XFile image) async {
    return MultipartFile.fromFile(image.path,
        filename: image.path.split('/').last);
  }

  Widget suffixIcon = const Icon(Icons.visibility_rounded);
  bool obSecureText = true;
  void changePasswordVisibility() {
    obSecureText = !obSecureText;
    suffixIcon = obSecureText
        ? const Icon(Icons.visibility_rounded)
        : const Icon(Icons.visibility_off_rounded);
    emit(SignUpPasswordVisibilityState());
  }

  Widget confirmSuffixIcon = const Icon(Icons.visibility_rounded);
  bool confirmObSecureText = true;
  void changeConfirmPasswordVisibility() {
    confirmObSecureText = !confirmObSecureText;
    confirmSuffixIcon = confirmObSecureText
        ? const Icon(Icons.visibility_rounded)
        : const Icon(Icons.visibility_off_rounded);
    emit(SignUpConfirmPasswordVisibilityState());
  }
}
