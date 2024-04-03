part of 'sign_in_cubit.dart';

@immutable
abstract class SignInState {}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {}

class SignInFailed extends SignInState {
  final String errorMessage;

  SignInFailed({required this.errorMessage});
}

class ChangePasswordVisibility extends SignInState {}
