import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/styles/spacing_styles.dart';
import 'package:flutterecommerceapp/features/authentication/screen/Login/login.dart';
import 'package:flutterecommerceapp/utils/constants/image_strings.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';
import 'package:get/get.dart';

import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class successScreen extends StatelessWidget {
  const successScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image,title,subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
              padding: TSpacingStyle.paddingWithAppBarHeight * 2,
              child: Column(
                children: [
                  //Image
                  Image(
                    image: AssetImage(image),
                    width: THelperFunctions.screenWidth() * 0.60,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //title & subtitle
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Text(
                   subTitle,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  //button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: onPressed,
                          child: const Text(TTexts.tContinue)),),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                ],
              ))),
    );
  }
}



