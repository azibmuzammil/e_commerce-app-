import 'package:e_commerce_app/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_skip_button.dart';
import 'package:e_commerce_app/utils/constants/images.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatedPageIndicator,
              children: [
                OnboardingPage(
                  lottieAsset: UImages.onBoardingAnimation1,
                  title: UTexts.onBoardingTitle1,
                  subtitle: UTexts.onBoardingSubTitle1,
                ),
                OnboardingPage(
                  lottieAsset: UImages.onBoardingAnimation2,
                  title: UTexts.onBoardingTitle2,
                  subtitle: UTexts.onBoardingSubTitle2,
                ),
                OnboardingPage(
                  lottieAsset: UImages.onBoardingAnimation3,
                  title: UTexts.onBoardingTitle3,
                  subtitle: UTexts.onBoardingSubTitle3,
                ),
              ],
            ),
            OnboardingDotNavigation(),
            OnboardingNextButton(),
            OnboardingSkipButton(),
          ],
        ),
      ),
    );
  }
}
