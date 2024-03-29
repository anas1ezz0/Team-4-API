import 'package:flutter/material.dart';
import 'package:team_project/view/home_page/widgets/doctors_item.dart';

class DoctorItemListView extends StatelessWidget {
  const DoctorItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: DoctorsItem(),
            );
          }),
    );
  }
}
