import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:team_project/core/app_assets.dart';
import 'package:team_project/core/utilts/widgets/custom_text_form_field.dart';
import 'package:team_project/helpers/spacing.dart';
import 'package:team_project/theming/colors.dart';

class TextFormAndSettingsIcon extends StatelessWidget {
  const TextFormAndSettingsIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: AppTextFormField(
              hintText: 'Search',
              prefixIcon: Icon(
                Icons.search,
                size: 32,
                color: AppColor.textColor,
              ),
              hintStyle: const TextStyle(color: Colors.black),
              type: TextInputType.emailAddress,
              controller: TextEditingController(),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.textColor),
                  borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.textColor),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          horizontalSpace(15),
          Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: AppColor.mainColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(
                AppAssets.settings,
                fit: BoxFit.scaleDown,
              )),
        ],
      ),
    );
  }
}
