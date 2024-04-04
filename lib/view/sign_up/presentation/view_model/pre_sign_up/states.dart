
import '../../../data/models/pre_signup_model.dart';

abstract class PreSignUpStates {}

class PreSignUpInitialState extends PreSignUpStates {}

class PreSignUpLoadingState extends PreSignUpStates {}

class PreSignUpSuccessState extends PreSignUpStates {
  late final PreSignUpModel preSignUpModel;
  PreSignUpSuccessState(this.preSignUpModel);
}

class PreSignUpErrorState extends PreSignUpStates {
  final String error;
  PreSignUpErrorState(this.error);
}