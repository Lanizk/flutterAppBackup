import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
//image with 60% screen width
                    Image(
                      image:
                          const AssetImage(TImages.deliveredEmailIllustration),
                      width: THelperFunctions.screenWidth() * 0.60,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),

                    //title & subtitle
                    Text(
                      TTexts.changePasswordTitle1,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Text(
                      TTexts.changePasswordSubTitle1,
                      style: Theme.of(context).textTheme.labelLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),

                    //Buttons
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text(TTexts.done))),

                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(TTexts.resendEmail))),
                  ],
                ))));
  }
}
