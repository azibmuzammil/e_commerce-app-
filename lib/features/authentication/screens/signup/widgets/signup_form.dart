import 'package:e_commerce_app/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/privacy_policy_checkbox.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class USignUpForm extends StatelessWidget {
  const USignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: UTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            SizedBox(width: USizes.spaceBtwInputFields),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: UTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        TextField(
          decoration: InputDecoration(
            labelText: UTexts.email,
            prefixIcon: Icon(Iconsax.direct_right),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        TextField(
          decoration: InputDecoration(
            labelText: UTexts.phoneNumber,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        TextField(
          decoration: InputDecoration(
            labelText: UTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields / 2),
        UPrivacyPolicyCheckBox(),
        SizedBox(height: USizes.spaceBtwSections),
        UElevatedButton(
          onPressed: () {
            Get.to(() => const VerifyEmailScreen());
          },
          child: Text(UTexts.createAccount),
        ),
      ],
    );
  }
}
