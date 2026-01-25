import 'package:e_commerce_app/common/styles/padding.dart';
import 'package:e_commerce_app/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:e_commerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });
  final String imageUrl;
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPading,
          child: Column(
            children: [
              Image.asset(
                imageUrl,
                height: UDeviceHelper.getScreenWidth(context) * 0.8,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Text(title, style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: USizes.spaceBtwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwItems * 4),
              UElevatedButton(
                onPressed: onPressed,
                child: Text(UTexts.continueButton),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
