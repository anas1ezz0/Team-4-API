import 'package:flutter/material.dart';
import 'package:team_project/helpers/spacing.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/payment_option/widget/payment_option_body.dart';
import 'package:team_project/view/settings_page/widgets/feed_back_options.dart';

Future<dynamic> feedBackDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            backgroundColor: AppColor.dialogColor,
            title: Text(
              'Send us some feedback!',
              // maxLines: 1,
              style: TextStyle(
                color: AppColor.secondaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Do you have a suggestion or found some bug! ',
                  style: TextStyle(
                    color: AppColor.secondaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                verticalSpace(13),
                Flexible(
                  child: TextFormField(
                    minLines: 4,
                    maxLines: 5,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                        left: 8,
                        top: 0,
                        bottom: 30,
                      ),
                      hintText: "Describe your issue or idea",
                      hintStyle: TextStyle(
                        color: AppColor.textColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      fillColor: AppColor.secondaryColor,
                      filled: true,
                      focusedBorder: outLineInputBorder(),
                      border: outLineInputBorder(),
                    ),
                  ),
                ),
                verticalSpace(16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FeedBackOptions(
                      text: 'Bug',
                    ),
                    FeedBackOptions(
                      text: 'Comment',
                    ),
                    FeedBackOptions(
                      text: 'Other',
                    ),
                  ],
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
