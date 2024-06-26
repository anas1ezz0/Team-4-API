import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/helpers/network/local/cache_helper.dart';
import 'package:team_project/routing/routing.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/onBoarding/model/onboarding_model.dart';
import 'package:team_project/view/onBoarding/ui/widgets/onboarding_header.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var boardingController = PageController();
  List<OnboardingModel> onBoardingList = [
    OnboardingModel(
      image: 'assets/images/select_doctor1.png',
      title: 'Choose your doctor',
      description:
          'Application provide you with alot of experienced doctors you can see these profile and choose one you want to appointment with him.',
    ),
    OnboardingModel(
      image: 'assets/images/date_1.png',
      title: 'Choose date and time',
      description:
          'The application can help you choose the appropriate date and time for you and the selected doctor.',
    ),
    OnboardingModel(
      image: 'assets/images/select_doc1.png',
      title: 'Communicate with your doctor',
      description:
          'Once you access the profile of doctoryou selected you can communicate with him and send any message ',
    ),
  ];

  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.horizontal,
              onPageChanged: (int index) {
                if (index == onBoardingList.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
              physics: const BouncingScrollPhysics(),
              controller: boardingController,
              itemBuilder: (context, index) {
                return onboardingbody(onBoardingList[index]);
              },
              itemCount: onBoardingList.length,
            ),
            const OnBoardingHeader(),
            Positioned(
              bottom: 0,
              left: -200,
              right: -220,
              child: Container(
                padding: const EdgeInsets.all(15),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SmoothPageIndicator(
                        controller: boardingController,
                        count: 3,
                        effect: const ExpandingDotsEffect(
                          activeDotColor: Color(0xff336EA6),
                          dotColor: Colors.grey,
                          dotHeight: 10,
                          dotWidth: 10,
                          spacing: 5.0,
                          expansionFactor: 4,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: 8.0, bottom: 5),
                          child: TextButton(
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  Colors.grey.shade100),
                            ),
                            onPressed: () {
                              if (isLast) {
                                CacheHelper.saveData(
                                        key: 'onBoarding', value: true)
                                    .then((value) {
                                  if (value) {
                                    context.pushReplacementNamed(
                                        Routes.signInScreen);
                                  }
                                });
                              } else {
                                boardingController.nextPage(
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeIn,
                                );
                              }
                            },
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'Next',
                                  style: TextStyle(
                                      color: Color(0xff233B55),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  width: 9,
                                ),
                                SvgPicture.asset(
                                  'assets/images/Group.svg',
                                  width: 28,
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget onboardingbody(OnboardingModel model) {
  return Column(
    children: [
      Center(
        child: Image.asset(
          model.image,
          height: 340,
        ),
      ),
      const Spacer(),
      bottomContainer(model),
    ],
  );
}

Widget bottomContainer(OnboardingModel model) {
  return Container(
      height: 290,
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            model.title,
            style: const TextStyle(
                color: Color(
                  0xff233B55,
                ),
                fontSize: 25,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            model.description,
            style: const TextStyle(
                color: Color(0xff233B55),
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ],
      ));
}
