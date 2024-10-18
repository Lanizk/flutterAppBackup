import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/custom_shapes/containers/TRoundedContainer.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';
import 'package:flutterecommerceapp/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount:14,
      separatorBuilder: (_,__)=>const SizedBox(height: TSizes.spaceBtwItems,),
      itemBuilder: (_,__)=> TRoundedContainer(
        showBoarder: true,
        padding: const EdgeInsets.all(TSizes.md),
        backgroundColor: dark ? TColors.dark : TColors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Row 1
            Row(
              children: [
                // Icon 1
                Icon(Iconsax.ship),
                SizedBox(
                  width: TSizes.spaceBtwItems / 2,
                ),
                // Status & date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: TColors.primary, fontWeightDelta: 1),
                      ),
                      Text('11 Nov 2023',
                          style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
                //--3
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.arrow_right_34,
                      size: TSizes.iconSm,
                    ))
              ],
            ),
      const SizedBox(height: TSizes.spaceBtwItems,),
            //Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // Icon 1
                      Icon(Iconsax.tag),
                      SizedBox(
                        width: TSizes.spaceBtwItems / 2,
                      ),
                      // Status & date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            Text('[#256f2]',
                                style: Theme.of(context).textTheme.labelMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      // Icon 1
                      Icon(Iconsax.calendar),
                      SizedBox(
                        width: TSizes.spaceBtwItems / 2,
                      ),
                      // Status & date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ship date',
                              style: Theme.of(context)
                                  .textTheme.titleSmall
      
                            ),
                            Text('03 Nov 2023',
                                style: Theme.of(context).textTheme.labelMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
