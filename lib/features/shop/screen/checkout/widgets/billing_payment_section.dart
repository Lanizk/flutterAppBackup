
import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/custom_shapes/containers/TRoundedContainer.dart';
import 'package:flutterecommerceapp/common/widgets/text/section_heading.dart';
import 'package:flutterecommerceapp/utils/constants/image_strings.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';
import 'package:flutterecommerceapp/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection  ({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(title: 'Payment Method',buttonTitle: 'Change',onPressed: (){},),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark? TColors.light:TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: const Image(image: AssetImage(TImages.promoBanner3),fit: BoxFit.contain,),
            ),
            const SizedBox(width: TSizes.spaceBtwItems/2,),
            Text('PayPal',style:Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
