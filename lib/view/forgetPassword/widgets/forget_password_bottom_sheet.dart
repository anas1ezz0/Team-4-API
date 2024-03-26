import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/view/forgetPassword/widgets/forget_password_widget.dart';
import 'package:team_project/view/forgetPassword/widgets/reset_password_widget.dart';

class ModalBottomSheet {
  static void forgetPasswordBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom
              ),
              child: Container(
                  width: 428.w,
                  height: 441.h,
                  padding: const EdgeInsets.all(20),
                  child:  ForgetPasswordWidget()),
            ),
          );
        });
  }
static void resetPasswordBottom(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        builder: (BuildContext context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
                width: 428.w,
                height: 674.h,
                padding: const EdgeInsets.all(20),
                child:  ResetPasswordWidget()),
          );
        });
  }

}
