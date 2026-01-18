import 'package:e_commerce_app/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:e_commerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Obx(() {
      if (controller.currentPageIndex.value == 2) {
        return const SizedBox.shrink();
      }

      return Positioned(
        top: UDeviceHelper.getAppBarHeight(),
        right: 0,
        child: TextButton(
          onPressed: controller.skip,
          child: Text(
            UTexts.skip.toUpperCase(),
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.right,
          ),
        ),
      );
    });
  }
}
