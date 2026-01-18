import 'package:e_commerce_app/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce_app/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: USizes.spaceBtwItems,
      left: 0,
      right: 0,
      child: Obx(
        () => UElevatedButton(
          onPressed: controller.nextPage,
          child: Text(
            controller.currentPageIndex.value == 2
                ? UTexts.getStarted
                : UTexts.next,
          ),
        ),
      ),
    );
  }
}
