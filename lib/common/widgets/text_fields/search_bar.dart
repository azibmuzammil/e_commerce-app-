import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class USearchBar extends StatelessWidget {
  const USearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: USizes.spaceBtwSections,
      left: USizes.spaceBtwSections,
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: USizes.md),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
          color: UColors.white,
          boxShadow: [
            BoxShadow(
              color: UColors.black.withValues(alpha: 0.1),
              blurRadius: 4.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(Iconsax.search_normal, color: UColors.darkGrey),
            SizedBox(width: USizes.spaceBtwItems),
            Text(
              "Search for products",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
