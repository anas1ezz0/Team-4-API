
import '../../../../models/sign_up_models/sign_up_model.dart';

abstract class SignUpStates {}

class SignUpInitialState extends SignUpStates {}

class SignUpLoadingState extends SignUpStates {}

class SignUpSuccessState extends SignUpStates {
  late final SignUpModel signUpModel;
  SignUpSuccessState(this.signUpModel);
}

class SignUpErrorState extends SignUpStates {
  final String error;
  SignUpErrorState(this.error);
}

class UploadProfilePicSuccessState extends SignUpStates {}

class SignUpPasswordVisibilityState extends SignUpStates{}

class SignUpConfirmPasswordVisibilityState extends SignUpStates{}