import 'package:flutter/material.dart';
import 'package:team_project/core/utilts/widgets/title_and_see_all_botton.dart';
import 'package:team_project/helpers/spacing.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/category_page/categories_page.dart';
import 'package:team_project/view/home_page/ui/widgets/Text_form_and_Settings_Icon.dart';
import 'package:team_project/view/home_page/ui/widgets/custom_home_appbar.dart';
import 'package:team_project/view/home_page/ui/widgets/doctors_item_listview.dart';
import 'package:team_project/view/home_page/ui/widgets/home_category_listview.dart';
import 'package:team_project/view/home_page/ui/widgets/home_page_image_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondaryColor,
      appBar: const CustomHomeAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              const TextFormAndSettingsIcon(),
              verticalSpace(10),
              const HomePageImageHeader(),
              verticalSpace(15),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CategoriesPage(),
                  ),
                ),
                child: TitleAndSeeAllBottonWidget(
                  title: 'Categories',
                  seeAllText: 'See All',
                  seeAllIcon: Icon(
                    Icons.chevron_right,
                    color: AppColor.textColor,
                  ),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const CategoriesPage(),
                    //   ),
                    // );
                  },
                ),
              ),
              verticalSpace(18),
              const HomeCategoryListView(),
              verticalSpace(18),
              TitleAndSeeAllBottonWidget(
                title: 'Doctors',
                seeAllText: 'See All',
                seeAllIcon: Icon(
                  Icons.chevron_right,
                  color: AppColor.textColor,
                ),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const CategoriesScreen(),
                  //   ),
                  // );
                },
              ),
              verticalSpace(18),
              const DoctorItemListView(),
              verticalSpace(14),
            ],
          ),
        ),
      ),
    );
  }
}
