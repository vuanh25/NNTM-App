import 'package:application_flutter/features/authencation/controllers.onboarding/onboarding_controller.dart';
import 'package:application_flutter/screens/onboarding/widgets/onboarding_dot_navigator.dart';
import 'package:application_flutter/screens/onboarding/widgets/onboarding_nextbutton.dart';
import 'package:application_flutter/screens/onboarding/widgets/onboarding_page.dart';
import 'package:application_flutter/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:application_flutter/utils/constants/image_strings.dart';
import 'package:application_flutter/utils/constants/test_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                iamge: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                iamge: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                iamge: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigator(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
