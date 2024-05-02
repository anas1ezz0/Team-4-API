import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/routing/routing.dart';
import '../../../../theming/colors.dart';

class LogOutView extends StatefulWidget {
  const LogOutView({super.key});

  @override
  State<LogOutView> createState() => _LogOutViewState();
}

class _LogOutViewState extends State<LogOutView> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Center(
            child: Text(
              'Profile',
              style: TextStyle(
                color: const Color(0xff233B55),
                fontSize: 26.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          CircleAvatar(
              radius: 70.r,
              backgroundColor: AppColor.mainColor,
              child: Image.asset('assets/images/user.png')),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Ammar Ahmed',
              style: TextStyle(
                color: const Color(0xff233B55),
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          AlertDialog(
            backgroundColor: AppColor.mainColor,
            title: Text('See you soon',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w700,
                )),
            content: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'You are about to logout.\nAre you sure this is what\nyou want?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          )),
                          onPressed: () {
                            context.pushNamed(Routes.signInScreen);
                          },
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Confirm logout',
                              style: TextStyle(
                                color: const Color(0xff233B55),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Logout from all devices',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  leading: Checkbox(
                      fillColor:
                          const MaterialStatePropertyAll(Color(0xffFFFFFF)),
                      checkColor: AppColor.mainColor,
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
