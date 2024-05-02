import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_project/view/category_page/categories_page.dart';
import 'package:team_project/view/home_page/ui/home_page.dart';
import 'package:team_project/view/profile_page/profile_page.dart';
import 'package:team_project/view/select_date_and_time/presentation/view/select_and_time_view.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens = [
    const HomePage(),
    const CategoriesScreen(),
    const SelectDateAndTimeView(),
    const ProfilePage(),
  ];
  void changeButtonNavBar(int index) {
    currentIndex = index;
    emit(ButtonNavBarChangeState());
  }
}
