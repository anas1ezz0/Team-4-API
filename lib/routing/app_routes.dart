import 'package:flutter/material.dart';
import 'package:team_project/routing/routing.dart';
import 'package:team_project/view/home_view.dart';
import 'package:team_project/view/onBoarding/ui/onboarding.dart';
import 'package:team_project/view/sign_in/sign_in_view.dart';
import '../view/sign_up/pre_sign_up_view.dart';
import '../view/sign_up/sign_up_view.dart';
import '../view/sign_up/welcome_page_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoarding(),
        );
      case Routes.signInScreen:
        return MaterialPageRoute(
          builder: (_) => const SignInView(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
      case Routes.preSignUpScreen:
        return MaterialPageRoute(
          builder: (_) => const PreSignUpView(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpView(),
        );
      case Routes.welcomeSignUpScreen:
        return MaterialPageRoute(
          builder: (_) => const WelcomeSignUpPageView(),
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
