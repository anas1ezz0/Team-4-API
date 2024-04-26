// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_project/core/cubit/app_cubit.dart';
import 'package:team_project/core/di/service_locator.dart';
import 'package:team_project/routing/routing.dart';
import 'package:team_project/view/home_page/ui/home_page.dart';
import 'package:team_project/view/onBoarding/ui/onboarding.dart';
import 'package:team_project/view/sign_in/presentation/view_model/sign_in_cubit.dart';
import 'package:team_project/view/sign_in/sign_in_view.dart';
import '../view/all_screens.dart';
import '../view/sign_in/data/repos/sign_in_repo_imp.dart';
import '../view/sign_up/presentation/view/pre_sign_up_view.dart';
import '../view/sign_up/presentation/view/sign_up_view.dart';
import '../view/sign_up/presentation/view/welcome_page_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoarding(),
        );
      case Routes.signInScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SignInCubit(getIt.get<SignInRepoImp>()),
            child: const SignInView(),
          ),
        );
      case Routes.preSignUpScreen:
        return MaterialPageRoute(
          builder: (_) => PreSignUpView(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpView(),
        );
      case Routes.welcomeSignUpScreen:
        return MaterialPageRoute(
          builder: (_) => const WelcomeSignUpPageView(),
        );
      case Routes.mainScreens:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AppCubit(),
            child: const MainScreens(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
