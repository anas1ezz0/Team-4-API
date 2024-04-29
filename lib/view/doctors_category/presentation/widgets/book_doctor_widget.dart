import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'grid_or_list_container.dart';

class BookDoctorWidget extends StatelessWidget {
  const BookDoctorWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                color: const Color(0xff233B55),
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            const GridOrListViewContainer()
          ],
        ),
      ),
    );
  }
}
