import 'package:e_commerce_app/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
      bottom: UDeviceHelper.getBottomNavigationBarHeight() * 6,
      left: UDeviceHelper.getScreenWidth(context) / 2.5,
      right: UDeviceHelper.getScreenWidth(context) / 2.5,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(dotHeight: 6.0),
      ),
    );
  }
}
