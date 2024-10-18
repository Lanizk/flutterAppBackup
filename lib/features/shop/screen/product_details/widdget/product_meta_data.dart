import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/image/circular_image.dart';
import 'package:flutterecommerceapp/common/widgets/text/product_price_text.dart';
import 'package:flutterecommerceapp/common/widgets/text/t_brand_title_with_verified_icon.dart';
import 'package:flutterecommerceapp/utils/constants/enums.dart';
import 'package:flutterecommerceapp/utils/constants/image_strings.dart';
import 'package:flutterecommerceapp/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/custom_shapes/containers/TRoundedContainer.dart';
import '../../../../../common/widgets/text/product_title_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TProductionMetaData extends StatelessWidget {
  const TProductionMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///Price & sale price
        Row(
          children: [
            //Sales Tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.black)),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            //price
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            const TProductPriceText(
              price: '175',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        ///title
        const TProductTitleText(title: 'new green shirt'),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        ///Stock Status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),

        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        ///Brand
        Row(
          children: [
            TCircularImage(image: TImages.promoBanner3,width: 32,height: 32,overLayColor: darkMode? TColors.white:TColors.white,),
            const TBrandTitleTextWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
