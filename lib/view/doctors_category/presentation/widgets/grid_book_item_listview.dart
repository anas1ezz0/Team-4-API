import 'package:flutter/material.dart';

import 'book_grid_doctor_item.dart';

class GridBookDoctorItemsList extends StatelessWidget {
  const GridBookDoctorItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
        padding: const EdgeInsets.only(top: 18),
        sliver: SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.8,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return const GridBookDoctorItem();
            },
            childCount: 10,
          ),
        ));
  }
}
