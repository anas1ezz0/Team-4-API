import 'package:flutter/material.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/home_page/model/home_page_category_model.dart';

import '../../routing/routing.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

List<CategoryPageModel> categoryListHere = [
  CategoryPageModel(
    name: 'Speech',
    image: 'assets/images/speach.png',
  ),
  CategoryPageModel(
    name: 'Autism',
    image: 'assets/images/Autism.png',
  ),
  CategoryPageModel(
    name: 'Learning \ndifficulties',
    image: 'assets/images/learn.png',
  ),
  CategoryPageModel(
    name: 'Intelligence\ntest',
    image: 'assets/images/smart_test.png',
  ),
  CategoryPageModel(
    name: 'Behavior  \n modification',
    image: 'assets/images/behave.png',
  ),
  CategoryPageModel(
    name: 'Skills \n development',
    image: 'assets/images/skills.png',
  ),
];

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //     onPressed: () {
        //       context.pop();
        //     },
        //     icon: const Icon(
        //       Icons.arrow_back_ios_new,
        //       color: Colors.white,
        //     )),
        backgroundColor: AppColor.mainColor,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Categories',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: GridView.builder(
                    itemCount: categoryListHere.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 8,
                            crossAxisCount: 2,
                            childAspectRatio: 1 / 1.06),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          context.pushNamed(Routes.doctorsCategoryScreen);
                        },
                        child: CategoryPageItem(
                            categoryList: categoryListHere[index]),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryPageItem extends StatelessWidget {
  const CategoryPageItem({
    super.key,
    required this.categoryList,
  });
  final CategoryPageModel categoryList;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.mainColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 10, left: 10),
            child: Image.asset(
              categoryList.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  categoryList.name,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                  size: 37,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
