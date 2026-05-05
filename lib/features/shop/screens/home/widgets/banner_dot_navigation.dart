import 'package:e_commerce_app/features/shop/controller/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class UBannerDotNavigation extends StatelessWidget {
  const UBannerDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Obx(
      () => AnimatedSmoothIndicator(
        activeIndex: controller.carouselCurrentIndex.value,
        count: 6,
        effect: const ExpandingDotsEffect(dotHeight: 6.0),
      ),
    );
  }
}
