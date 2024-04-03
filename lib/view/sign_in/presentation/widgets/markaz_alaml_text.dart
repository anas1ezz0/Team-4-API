import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MarkazAlAmalText extends StatelessWidget {
  const MarkazAlAmalText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Markaz ElAmal',
        style: TextStyle(
          fontSize: 16.sp,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ));
  }
}
