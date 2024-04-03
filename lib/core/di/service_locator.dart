import 'package:get_it/get_it.dart';
import 'package:team_project/view/sign_in/data/repo/sign_in_repo_imp.dart';

final getIt = GetIt.instance;

void initializeGetIt() {
  getIt.registerSingleton<SignInRepoImp>(SignInRepoImp());
}
