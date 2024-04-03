// ignore_for_file: avoid_print

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_project/core/cubit/sign_up/pre_sign_up/states.dart';
import 'package:team_project/helpers/network/remote/dio_helper.dart';
import 'package:team_project/models/sign_up_models/pre_signup_model.dart';
import '../../end_points.dart';

class PreSignUpCubit extends Cubit<PreSignUpStates> {
  PreSignUpCubit() : super(PreSignUpInitialState());

  static PreSignUpCubit get(context) => BlocProvider.of(context);

  PreSignUpModel? preSignUpModel;

  void userPreSignUp({
    required String email,
  }) {
    emit(PreSignUpLoadingState());

    DioHelper.postData(
      url: PRE_SIGN_UP,
      data: {
        "email": email,
      },
    ).then((value) {
      preSignUpModel = PreSignUpModel.fromJson(value.data);
      print(
          ":::::::::::::::::::::::::::PRE SIGN UP RESPONSE ${value.data}:::::::::::::::::::::::::::");
      emit(PreSignUpSuccessState(preSignUpModel!));
    }).catchError((error) {
      print(error.toString());
      emit(PreSignUpErrorState(error.toString()));
    });
  }
}
