import 'package:e_commerce_app/common/styles/padding.dart';
import 'package:e_commerce_app/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce_app/common/screens/success_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/utils/constants/images.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:e_commerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(() => const LoginScreen());
            },
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPading,
          child: Column(
            children: [
              Image.asset(
                UImages.forgetPassword,
                height: UDeviceHelper.getScreenWidth(context) * 0.8,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Text(
                UTexts.verifyEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Text(
                'unknownpro@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Text(
                UTexts.verifyEmailSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwItems * 4),
              UElevatedButton(
                onPressed: () {
                  Get.to(
                    () => SuccessScreen(
                      imageUrl: UImages.forgetPasswordSuccess,
                      title: UTexts.accountCreatedSuccessfully,
                      subtitle: UTexts.accountCreatedSuccessfullySubTitle,
                      onPressed: () {},
                    ),
                  );
                },
                child: Text(UTexts.continueButton),
              ),
              SizedBox(height: USizes.spaceBtwItems / 2),
              TextButton(onPressed: () {}, child: Text(UTexts.resendEmail)),
            ],
          ),
        ),
      ),
    );
  }
}
