import 'package:e_commerce_app/common/styles/padding.dart';
import 'package:e_commerce_app/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce_app/features/authentication/screens/forgot_password/reset_password.dart';
import 'package:e_commerce_app/features/authentication/screens/forgot_password/widgets/forget_password_form.dart';
import 'package:e_commerce_app/features/authentication/screens/forgot_password/widgets/forget_password_header.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPading,
          child: Column(
            children: [
              ForgetPasswordHeader(),
              SizedBox(height: USizes.spaceBtwSections * 2),
              ForgetPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
