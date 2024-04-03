import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import '../../data/repo/sign_in_repo.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.signInRepo) : super(SignInInitial());
  SignInRepo signInRepo;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future signInByEmail() async {
    emit(SignInLoading());
    final result = await signInRepo.signIn(
        emailController.text, passwordController.text, false);
    result.fold(
      (l) {
        emit(SignInFailed(errorMessage: l.toString()));
      },
      (r) {
        emit(SignInSuccess());
      },
    );
  }

  bool isChanged = false;
  void changePasswordVisibility() {
    isChanged = !isChanged;
    emit(ChangePasswordVisibility());
  }
  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
