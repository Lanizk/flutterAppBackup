import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutterecommerceapp/features/authentication/control/onboarding_controller.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_util.dart';
import '../../../../utils/helpers/helper_functions.dart';

class on_boarding_navigation extends StatelessWidget {
  const on_boarding_navigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=onBoardingController.instance;
    final dark=THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getAppBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect:
        ExpandingDotsEffect(activeDotColor:dark
            ? TColors.light: TColors.dark, dotHeight: 6),),
    );
  }
}