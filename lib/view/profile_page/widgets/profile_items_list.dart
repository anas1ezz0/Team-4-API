import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/helpers/extentions.dart';
import '../../../routing/routing.dart';
import '../../../theming/colors.dart';
import '../data/profile_item_model.dart';

class ProfileItemsList extends StatelessWidget {
  const ProfileItemsList({super.key});
  static List<ProfileItemsModel> items = [
    ProfileItemsModel(icon: Icons.history, text: 'History'),
    ProfileItemsModel(icon: Icons.person_pin, text: 'Profile Details'),
    ProfileItemsModel(icon: Icons.chat_bubble, text: 'Chats'),
    ProfileItemsModel(icon: Icons.settings, text: 'Settings'),
    ProfileItemsModel(icon: Icons.help, text: 'Help'),
    ProfileItemsModel(icon: Icons.logout, text: 'Logout'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          items.length,
          (index) => ListTile(
                onTap: () {
                  if (index == 0) {
                    context.pushNamed(Routes.historyScreen);
                  } else if (index == 1) {
                    context.pushNamed(Routes.profileDetailsScreen);
                  } else if (index == 3) {
                    context.pushNamed(Routes.settingsScreen);
                  } else if (index == items.length - 1) {
                    context.pushNamed(Routes.logOutScreen);
                  }
                },
                contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff233B55),
                      size: 18,
                    )),
                title: Text(items[index].text,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp,
                    )),
                leading: CircleAvatar(
                    backgroundColor: AppColor.mainColor.withOpacity(
                      0.55,
                    ),
                    child: Icon(
                      items[index].icon,
                      color: Colors.white,
                    )),
              )),
    );
  }
}
