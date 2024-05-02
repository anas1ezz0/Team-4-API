import 'package:flutter/material.dart';
import 'package:team_project/helpers/spacing.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/payment_option/widget/payment_option_body.dart';
import 'package:team_project/view/settings_page/widgets/star_rate.dart';

Future<dynamic> rateDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            backgroundColor: AppColor.textColor,
            title: Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, right: 30, bottom: 5, left: 5),
              child: Text(
                'Send us your ratting !',
                style: TextStyle(
                  color: AppColor.secondaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                  child: StarsRate(),
                ),
                verticalSpace(15),
                Text(
                  'Your Comment',
                  style: TextStyle(
                      color: AppColor.secondaryColor,
                      fontWeight: FontWeight.w500),
                ),
                verticalSpace(5),
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: AppColor.secondaryColor,
                      filled: true,
                      focusedBorder: outLineInputBorder(),
                      border: outLineInputBorder(),
                    ),
                  ),
                ),
                verticalSpace(40),
                CustomBotton(
                  text: 'Submit',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColor.secondaryColor,
                  textColor: AppColor.textColor,
                  horizontal: 20,
                )
              ],
            ),
          ));
}

OutlineInputBorder outLineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: AppColor.textColor),
  );
}
