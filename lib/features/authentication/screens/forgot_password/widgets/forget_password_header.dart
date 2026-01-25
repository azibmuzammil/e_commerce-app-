import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class ForgetPasswordHeader extends StatelessWidget {
  const ForgetPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          UTexts.forgetPassword,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: USizes.spaceBtwItems / 2),
        Text(
          UTexts.forgetPasswordSubtitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
