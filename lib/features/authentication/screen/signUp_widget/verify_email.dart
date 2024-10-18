import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/success_screen/success_screen.dart';
import 'package:flutterecommerceapp/utils/constants/text_strings.dart';
import 'package:flutterecommerceapp/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../Login/login.dart';

class verifyEmailScreen extends StatelessWidget {
  const verifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => Get.offAll(() => const loginScreen()),
                icon: const Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
            //padding to give equal sides on both space
            child: Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    //image
                    Image(
                      image: AssetImage(TImages.deliveredEmailIllustration),
                      width: THelperFunctions.screenWidth() * 0.60,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),

                    //title & subtitle
                    Text(
                      TTexts.confirmEmailTitle1,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Text(
                      'allanmurimi96@gmail.com',
                      style: Theme.of(context).textTheme.labelLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Text(
                      TTexts.confirmEmailSubTitle1,
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),

                    //Buttons
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () => Get.to(() => successScreen(
                                  image: TImages.staticSuccessIllustration,
                                  title: TTexts.yourAccountCreatedTitle,
                                  subTitle: TTexts.yourAccountCreatedSubTitle,
                                  onPressed: () =>
                                      Get.to(() => const loginScreen()),
                                )),
                            child: const Text(TTexts.tContinue))),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(TTexts.resendEmail))),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                  ],
                ))));
  }
}
