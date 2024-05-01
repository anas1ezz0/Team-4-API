// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/core/di/service_locator.dart';
import 'package:team_project/routing/app_routes.dart';
import 'package:team_project/routing/routing.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/doctors_category/presentation/view_model/doctorcategory_cubit.dart';
import 'core/bloc_abserver.dart';
import 'helpers/constants.dart';
import 'helpers/network/local/cache_helper.dart';
import 'helpers/network/remote/dio_helper.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
  initializeGetIt();
  Bloc.observer = const SimpleBlocObserver();
  DioHelper.init();
  await CacheHelper.init();

  token = CacheHelper.getData(key: 'token');
  bool? onBoarding = CacheHelper.getData(key: 'onBoarding');
  print("onBoarding value : $onBoarding");

  String startWidget;
  if (onBoarding != null) {
    if (token != null) {
      startWidget = Routes.allScreens;
    } else {
      startWidget = Routes.signInScreen;
    }
  } else {
    startWidget = Routes.onBoardingScreen;
  }

  runApp(MyApp(
    appRouter: AppRouter(),
    startWidget: startWidget,
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  final String startWidget;

  const MyApp({
    super.key,
    required this.appRouter,
    required this.startWidget,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColor.transparentColor,
    ));
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) => DoctorCategoryCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: AppColor.mainColor,
            useMaterial3: true,
          ),
          initialRoute: Routes.allScreens,
          onGenerateRoute: appRouter.generateRoute,
        ),
      ),
    );
  }
}
