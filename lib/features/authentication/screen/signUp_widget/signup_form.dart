import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/features/authentication/screen/signUp_widget/terms_andConditions.dart';
import 'package:flutterecommerceapp/features/authentication/screen/signUp_widget/verify_email.dart';
import 'package:flutterecommerceapp/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class signUpForm extends StatelessWidget {
  const signUpForm({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TTexts.firstname,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
                const SizedBox(width: TSizes.spaceBtwInputField),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TTexts.lastName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwInputField),
            //userName
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.userName,
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(height: TSizes.spaceBtwInputField),
            //Email
            TextFormField(
              decoration: const InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(height: TSizes.spaceBtwInputField),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: TTexts.phoneNumber,
                  prefixIcon: Icon(Iconsax.user)),
            ),
            const SizedBox(height: TSizes.spaceBtwInputField),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            //Terms and conditions checkbox

           const TTermsCondition(),
            const SizedBox(height: TSizes.spaceBtwSections),

            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () =>Get.to(()=>const verifyEmailScreen()),
                    child: const Text(TTexts.createAccount)))
          ],
        ));
  }
}

