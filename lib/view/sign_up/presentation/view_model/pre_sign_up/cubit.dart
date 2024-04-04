// ignore_for_file: avoid_print

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_project/helpers/network/remote/dio_helper.dart';
import 'package:team_project/view/sign_up/presentation/view_model/pre_sign_up/states.dart';
import '../../../../../core/cubit/end_points.dart';
import '../../../data/models/pre_signup_model.dart';

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
