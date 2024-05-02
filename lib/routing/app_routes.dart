import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_project/core/cubit/app_cubit.dart';
import 'package:team_project/core/di/service_locator.dart';
import 'package:team_project/routing/routing.dart';
import 'package:team_project/view/category_page/categories_page.dart';
import 'package:team_project/view/doctors_category/presentation/view_model/doctor_category_cubit.dart';
import 'package:team_project/view/doctors_category/presentation/views/doctors_category_view.dart';
import 'package:team_project/view/edit_profile/presentation/edit_profile_view.dart';
import 'package:team_project/view/history/history_screen.dart';
import 'package:team_project/view/home_page/ui/home_page.dart';
import 'package:team_project/view/logout/presentation/view/log_out_view.dart';
import 'package:team_project/view/onBoarding/ui/onboarding.dart';
import 'package:team_project/view/payment_option/ui/payment_option_screen.dart';
import 'package:team_project/view/payment_option/ui/succes_appointment_screen.dart';
import 'package:team_project/view/praivce/privacy_screen.dart';
import 'package:team_project/view/profile_details/presentation/profile_details_view.dart';
import 'package:team_project/view/select_date_and_time/presentation/view/select_and_time_view.dart';
import 'package:team_project/view/sign_in/presentation/view_model/sign_in_cubit.dart';
import 'package:team_project/view/sign_in/sign_in_view.dart';
import '../view/all_screens.dart';
import '../view/settings_page/ui/settings_screen.dart';
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
      case Routes.allScreens:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(providers: [
            BlocProvider(create: (context) => AppCubit()),
            BlocProvider(create: (context) => DoctorCategoryCubit()),
          ], child: const MainScreens()),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case Routes.logOutScreen:
        return MaterialPageRoute(
          builder: (_) => const LogOutView(),
        );
      case Routes.categoriesScreen:
        return MaterialPageRoute(
          builder: (_) => const CategoriesScreen(),
        );
      case Routes.paymentOptionScreen:
        return MaterialPageRoute(
          builder: (_) => const PaymentOptionScreen(),
        );
      case Routes.successAppointmentScreen:
        return MaterialPageRoute(
          builder: (_) => const SuccessAppointmentScreen(),
        );
      case Routes.historyScreen:
        return MaterialPageRoute(
          builder: (_) => const HistoryScreen(),
        );
      case Routes.doctorsCategoryScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => DoctorCategoryCubit(),
                  child: const DoctorsCategoryView(),
                ));
      case Routes.dateAndTimeScreen:
        return MaterialPageRoute(
            builder: (context) => const SelectDateAndTimeView());
      case Routes.profileDetailsScreen:
        return MaterialPageRoute(
            builder: (context) => const ProfileDetailsView());
      case Routes.editProfileScreen:
        return MaterialPageRoute(builder: (context) => const EditProfileView());

      case Routes.privacyScreen:
        return MaterialPageRoute(builder: (context) => const PrivacyScreen());
      case Routes.settingsScreen:
        return MaterialPageRoute(
          builder: (context) => const SettingsScreen(),
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
