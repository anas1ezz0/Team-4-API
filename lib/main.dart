import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/core/di/service_locator.dart';
import 'package:team_project/routing/app_routes.dart';
import 'package:team_project/routing/routing.dart';
import 'package:team_project/theming/colors.dart';

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

  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColor.transparentColor,
    ));
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColor.mainColor,
          useMaterial3: true,
        ),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
