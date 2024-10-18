import'package:flutter/material.dart';
import 'package:flutterecommerceapp/features/authentication/control/onboarding_controller.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_util.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () =>onBoardingController.instance.skipPage(),
          child: const Text('skip'),
        ));
  }
}