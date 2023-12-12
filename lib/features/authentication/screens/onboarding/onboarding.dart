import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';

import 'widgets/onboarding_next_botton.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';
import 'widgets/onboarding_dot_navigation.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable pagePlaceholder
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              onBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              onBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // skip button
          const OnBoardingSkip(),

          //dot navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          //circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
