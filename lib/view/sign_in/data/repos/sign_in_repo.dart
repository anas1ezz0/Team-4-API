import 'package:dartz/dartz.dart';
import '../models/sign_in_model.dart';

abstract class SignInRepo {
  Future<Either<String, SignInModel>> signIn(
      String email, String password, bool? isFormData);
}
