import 'package:flutter/material.dart';
import 'package:team_project/generated/app_assets.dart';
import 'package:team_project/theming/colors.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.secondaryColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.mainColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
          title: Text(
            'History details',
            style: TextStyle(
                color: AppColor.secondaryColor, fontWeight: FontWeight.bold),
          ),
          elevation: 0.0,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: AppColor.mainColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(18),
                      bottomLeft: Radius.circular(18),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.doctorImage,
                        fit: BoxFit.cover,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Dr: Osama ali',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '9 MAR',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '11:00 AM',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 150,
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: AppColor.textColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(18),
                        bottomRight: Radius.circular(18),
                      ),
                    ),
                    child: const Icon(
                      Icons.delete_outline_outlined,
                      size: 30,
                      color: Colors.white,
                    ))
              ],
            )
          ],
        ));
  }
}
