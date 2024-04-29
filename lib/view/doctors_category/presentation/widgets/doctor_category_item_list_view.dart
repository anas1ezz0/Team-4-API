import 'package:flutter/material.dart';

import 'doctor_category_item.dart';

class DoctorCategoryItemListView extends StatelessWidget {
  const DoctorCategoryItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 190,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => const DoctorCategoryItem()),
      ),
    );
  }
}
