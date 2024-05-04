import 'package:flutter/material.dart';
import 'package:team_project/helpers/extentions.dart';

import '../../../../routing/routing.dart';
import 'book_doctor_item.dart';

class BookDoctorItemsListView extends StatelessWidget {
  const BookDoctorItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: GestureDetector(
                onTap: () {
                  context.pushNamed(Routes.doctorProfileView);
                },
                child: const BookDoctorItem()),
          );
        },
        childCount: 10,
      ),
    );
  }
}
