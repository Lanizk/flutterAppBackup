import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/features/authentication/control/onboarding_controller.dart';
import 'package:flutterecommerceapp/utils/constants/colors.dart';
import 'package:flutterecommerceapp/utils/constants/image_strings.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';
import 'package:flutterecommerceapp/utils/device/device_util.dart';
import 'package:flutterecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutterecommerceapp/utils/themes/customThemes/text_theme.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/text_strings.dart';
import '../widgets/on_boardin_navigation.dart';
import '../widgets/on_boarding_page.dart';
import '../widgets/on_boarding_skip.dart';

class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(onBoardingController());
    return Scaffold(
        body: Stack(
      children: [
        //horizontal scrollable pages

        PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [

          onBoardingPage(
            image: TImages.onBoardingImage1,
            title: TTexts.onBoardingTitle1,
            subTitle: TTexts.onBoardingSubTitle1,
          ),
          onBoardingPage(
            image: TImages.onBoardingImage2,
            title: TTexts.onBoardingTitle2,
            subTitle: TTexts.onBoardingSubTitle2,
          ),
          onBoardingPage(
            image: TImages.onBoardingImage3,
            title: TTexts.onBoardingTitle3,
            subTitle: TTexts.onBoardingSubTitle3,
          ),
        ]),
        const onBoardingSkip(),
        const on_boarding_navigation(),
        //round button
        on_boarding_next_button()
      ],
    ));
  }
}

class on_boarding_next_button extends StatelessWidget {
  const on_boarding_next_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark=THelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () =>onBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor:dark? TColors.primary: Colors.black),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}
