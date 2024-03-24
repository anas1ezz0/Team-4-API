import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LetsStartText extends StatelessWidget {
  const LetsStartText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 21,
        top: 64,
        child: Text(
          "Let's Start with\nsign in",
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ));
  }
}
