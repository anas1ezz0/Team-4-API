import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularWhiteBackground extends StatelessWidget {
  const CircularWhiteBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      left: 0,
      bottom: 0,
      child: Container(
        height: 568.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(70.r), topLeft: Radius.circular(70.r)),
        ),
      ),
    );
  }
}
