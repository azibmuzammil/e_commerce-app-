import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/circular_container.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:e_commerce_app/common/widgets/text_fields/search_bar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(height: 340),
          UPrimaryHeaderContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UHomeAppBar(),
                SizedBox(height: USizes.spaceBtwSections),
                Padding(
                  padding: EdgeInsets.only(left: USizes.spaceBtwSections),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Popular Categories",
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall!.apply(color: UColors.white),
                      ),
                      UHomeCategories(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          USearchBar(),
        ],
      ),
    );
  }
}
