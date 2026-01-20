import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  //Variables
  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  //Methods
  void updatedPageIndicator(int index) {
    currentPageIndex.value = index;
  }

  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
      return;
    }
    currentPageIndex.value++;
    pageController.jumpToPage(currentPageIndex.value);
  }

  void skip() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
