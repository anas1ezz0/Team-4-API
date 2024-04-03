import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:team_project/core/cubit/end_points.dart';
import 'package:team_project/core/errors/failures.dart';
import 'package:team_project/helpers/network/remote/dio_helper.dart';
import 'package:team_project/view/sign_in/data/models/error_model.dart';
import 'package:team_project/view/sign_in/data/repo/sign_in_repo.dart';

import '../models/sign_in_model.dart';

class SignInRepoImp extends SignInRepo {
  @override
  Future<Either<String, SignInModel>> signIn(
      String email, String password, bool? isFormData) async {
    {
      try {
        var response = await DioHelper.postData(
            isFormData: false,
            url: SIGN_IN,
            data: {'email': email, 'password': password});
        final user = SignInModel.fromJson(response.data);
        return Right(user);
      } catch (e) {
        if (e is DioException) {
          return left(handleDioExceptions(e));
        }
        return left(e.toString());
      }
    }
  }
}
