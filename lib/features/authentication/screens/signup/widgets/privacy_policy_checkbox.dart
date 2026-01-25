import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class UPrivacyPolicyCheckBox extends StatelessWidget {
  const UPrivacyPolicyCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = UHelperFunction.isDarkMode(context);
    return Row(
      children: [
        Checkbox(value: true, onChanged: null),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium,
            children: [
              TextSpan(text: '${UTexts.iAgree} '),
              TextSpan(
                text: UTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: isDark ? UColors.white : UColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: isDark ? UColors.white : UColors.primary,
                ),
              ),
              TextSpan(text: ' ${UTexts.and} '),
              TextSpan(
                text: UTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: isDark ? UColors.white : UColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: isDark ? UColors.white : UColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
