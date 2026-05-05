import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/features/shop/controller/home/home_controller.dart';
import 'package:e_commerce_app/utils/constants/images.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class UHomeCarouselSlider extends StatelessWidget {
  const UHomeCarouselSlider({super.key});

  static const List<String> _banners = [
    UImages.homeBanner1,
    UImages.homeBanner2,
    UImages.homeBanner3,
    UImages.homeBanner4,
    UImages.homeBanner5,
    UImages.homeBanner6,
  ];

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1,
        autoPlay: true,
        onPageChanged: (index, _) => controller.updatePageIndicator(index),
      ),
      carouselController: controller.carouselController,
      items: _banners
          .map(
            (banner) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: USizes.defaultSpace,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(USizes.md),
                child: Image(
                  image: AssetImage(banner),
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
