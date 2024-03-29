import 'package:flutter/material.dart';
import 'package:team_project/view/home_page/widgets/home_category_item.dart';

class HomeCategoryListView extends StatelessWidget {
  const HomeCategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CategoryItem();
          }),
    );
  }
}
