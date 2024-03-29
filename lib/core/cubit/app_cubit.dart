import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_project/view/book_page/book_page.dart';
import 'package:team_project/view/category_page/categories_page.dart';
import 'package:team_project/view/home_page/home_page.dart';
import 'package:team_project/view/profile_page/profile_page.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens = [
    const HomePage(),
    const CategoriesPage(),
    const BookPage(),
    const ProfilePage(),
  ];
  void changeButtonNavBar(int index) {
    currentIndex = index;
    emit(ButtonNavBarChangeState());
  }
}
