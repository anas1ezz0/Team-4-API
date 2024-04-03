import 'package:get_it/get_it.dart';

import '../../view/sign_in/data/repos/sign_in_repo_imp.dart';

final getIt = GetIt.instance;

void initializeGetIt() {
  getIt.registerSingleton<SignInRepoImp>(SignInRepoImp());
}
