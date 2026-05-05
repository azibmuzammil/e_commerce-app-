import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UCartCounterIcon extends StatelessWidget {
  const UCartCounterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunction.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Iconsax.shopping_bag,
            color: dark ? UColors.dark : UColors.light,
          ),
        ),
        Positioned(
          right: 6,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: UColors.black,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: dark ? UColors.dark : UColors.light,
                  fontSizeFactor: 0.8,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
