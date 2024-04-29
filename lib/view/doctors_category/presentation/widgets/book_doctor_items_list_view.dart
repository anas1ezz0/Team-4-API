import 'package:flutter/material.dart';

import 'book_doctor_item.dart';

class BookDoctorItemsListView extends StatelessWidget {
  const BookDoctorItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BookDoctorItem(),
          );
        },
        childCount: 10,
      ),
    );
  }
}
