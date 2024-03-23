import 'package:flutter/material.dart';
import 'package:team_project/routing/routing.dart';
import 'package:team_project/view/home_view.dart';
import 'package:team_project/view/onBoarding/ui/onboarding.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoarding(),
        );
      case Routes.loginScreen:
      // return MaterialPageRoute(
      //   builder: (_) => BlocProvider(
      //     create: (context) => getIt<LoginCubit>(),
      //     child: const LoginScreen(),
      //   ),
      // );
      // case Routes.signUpScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => getIt<SignupCubit>(),
      //       child: const SignupScreen(),
      //     ),
      //   );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
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
