import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/features/authentication/screen/signUp_widget/signup_form.dart';
import 'package:flutterecommerceapp/features/authentication/screen/widgets/social_media.dart';
import 'package:flutterecommerceapp/features/authentication/screen/widgets/tform_divider.dart';
import 'package:flutterecommerceapp/utils/constants/text_strings.dart';
import 'package:flutterecommerceapp/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text(TTexts.signUpTitle1,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),
              //form
            const  signUpForm(),
              const SizedBox(width: TSizes.spaceBtwSections),
//divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),
              //social media
              const TSocialMedia(),
              const SizedBox(height: TSizes.spaceBtwSections),

            ],
          ),
        )));
  }
}


