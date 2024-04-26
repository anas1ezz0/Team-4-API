import 'package:flutter/material.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/home_page/model/home_page_category_model.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
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

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
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
                      return CategoryPageItem(
                          categoryList: categoryListHere[index]);
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
              // 'assets/images/speach.png',
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
                  // 'speach',
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
          // const Padding(
          //   padding: EdgeInsets.only(left: 120.0),
          //   child: Icon(
          //     Icons.chevron_right,
          //     color: Colors.white,
          //     size: 37,
          //   ),
          // ),
        ],
      ),
    );
  }
}
