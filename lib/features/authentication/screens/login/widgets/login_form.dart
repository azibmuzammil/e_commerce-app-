import 'package:e_commerce_app/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce_app/features/authentication/screens/forgot_password/forgot_password.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ULoginForm extends StatelessWidget {
  const ULoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: UTexts.email,
            prefixIcon: Icon(Iconsax.direct_right),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(value: true, onChanged: null),
                Text(UTexts.rememberMe),
              ],
            ),
            TextButton(
              onPressed: () {
                Get.to(() => const ForgetPasswordScreen());
              },
              child: Text(UTexts.forgetPassword),
            ),
          ],
        ),
        SizedBox(height: USizes.spaceBtwSections),
        UElevatedButton(
          onPressed: () {
            Get.to(() => const NavigationMenu());
          },
          child: Text(UTexts.signIn),
        ),
        SizedBox(height: USizes.spaceBtwItems / 2),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () => Get.to(() => const SignupScreen()),
            child: Text(UTexts.createAccount),
          ),
        ),
      ],
    );
  }
}
