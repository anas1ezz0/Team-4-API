import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_project/core/cubit/app_cubit.dart';
import 'package:team_project/theming/colors.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColor.mainColor,
            selectedItemColor: Colors.white,
            unselectedItemColor: AppColor.skyColor,
            elevation: 20.0,
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            currentIndex: AppCubit.get(context).currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              AppCubit.get(context).changeButtonNavBar(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 28,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.category,
                  size: 28,
                ),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.watch,
                  size: 28,
                ),
                label: 'Book',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 28,
                ),
                label: 'Profile',
              ),
            ],
          ),
          body: ConditionalBuilder(
            condition: true,
            builder: (context) => AppCubit.get(context)
                .screens[AppCubit.get(context).currentIndex],
            fallback: (context) => const CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
