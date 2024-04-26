import 'package:flutter/material.dart';
import 'package:team_project/view/home_page/model/home_page_category_model.dart';
import 'package:team_project/view/home_page/ui/widgets/home_category_item.dart';

class HomeCategoryListView extends StatefulWidget {
  const HomeCategoryListView({
    super.key,
  });

  @override
  State<HomeCategoryListView> createState() => _HomeCategoryListViewState();
}

class _HomeCategoryListViewState extends State<HomeCategoryListView> {
  List<HomePageCategoryModel> categoryList = [
    HomePageCategoryModel(
      name: 'Speech',
    ),
    HomePageCategoryModel(
      name: 'Autism',
    ),
    HomePageCategoryModel(
      name: 'Learning difficulties',
    ),
    HomePageCategoryModel(
      name: 'Intelligence test',
    ),
    HomePageCategoryModel(
      name: 'Behavior modification',
    ),
    HomePageCategoryModel(
      name: 'Skills development',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: categoryList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryItem(
              categoryList: categoryList[index],
            );
          }),
    );
  }
}
