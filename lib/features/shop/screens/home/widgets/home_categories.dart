import 'package:e_commerce_app/common/widgets/custom_shapes/circular_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/images.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class UHomeCategories extends StatelessWidget {
  const UHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        separatorBuilder: (context, index) =>
            const SizedBox(width: USizes.spaceBtwItems),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              UCircularContainer(
                height: 56,
                width: 56,
                padding: const EdgeInsets.all(USizes.sm),
                child: Image(
                  image: AssetImage(UImages.bagsIcon),
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(
                width: 55,
                child: Text(
                  'Sports Categories',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.apply(color: UColors.white),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        },
        itemCount: 10,
      ),
    );
  }
}
