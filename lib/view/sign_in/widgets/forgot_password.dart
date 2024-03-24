import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Forgot password ?',
      style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
          color: Colors.white),
    );
  }
}
