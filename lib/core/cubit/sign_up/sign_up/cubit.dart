// ignore_for_file: avoid_print


import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:team_project/core/cubit/end_points.dart';
import 'package:team_project/core/cubit/sign_up/sign_up/states.dart';
import 'package:team_project/models/sign_up_models/sign_up_model.dart';
import '../../../../helpers/constants.dart';
import '../../../../helpers/network/remote/dio_helper.dart';

class SignUpCubit extends Cubit<SignUpStates>{

  SignUpCubit() :super(SignUpInitialState());

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
        "email" : email,
        "password" : password,
        "cPassword" : confirmPassword,
        "phone" : phone,
        "name" : name,
        "OTP" : otp,
        "image" :await uploadProfilePic(profilePic!),
        "token" : token,
      },
      query:{
        "ln" : "en",
      },
    ).then((value){
      signUpModel= SignUpModel.fromJson(value.data);
      print(":::::::::::::::::::::::::::SIGN UP RESPONSE ${value.data}:::::::::::::::::::::::::::");
      emit(SignUpSuccessState(signUpModel!));
    }).catchError((error){
      print(error.toString());
      emit(SignUpErrorState(error.toString()));
    });
  }

  XFile? profilePic;
  uploadProfilePic(XFile image){
    profilePic=image;
    emit(UploadProfilePicSuccessState());
  }
  Future uploadImageToAPI(XFile image) async {
    return MultipartFile.fromFile(image.path,
        filename: image.path.split('/').last
    );
  }

  IconData suffix=Icons.visibility_rounded;
  bool passwordObsecureText= true;

  void changePasswordVisibility (){
    passwordObsecureText =! passwordObsecureText;
    suffix= passwordObsecureText? Icons.visibility_rounded : Icons.visibility_off_rounded;
    emit(SignUpPasswordVisibilityState());
  }

  IconData confirmSuffix=Icons.visibility_rounded;
  bool confirmObsecureText= true;

  void changeConfirmPasswordVisibility (){
    confirmObsecureText =! confirmObsecureText;
    confirmSuffix= confirmObsecureText? Icons.visibility_rounded : Icons.visibility_off_rounded;
    emit(SignUpConfirmPasswordVisibilityState());
  }

}