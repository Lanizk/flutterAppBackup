import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/utils/constants/colors.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';
import 'package:flutterecommerceapp/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/containers/TRoundedContainer.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      padding: EdgeInsets.all(TSizes.md),
        width: double.infinity,
        showBoarder: true,
        backgroundColor: selectedAddress
            ? TColors.primary.withOpacity(0.5)
            : Colors.transparent,
        borderColor: selectedAddress
            ? Colors.transparent
            : dark
                ? TColors.darkerGrey
                : TColors.grey,
        margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 5,

              child: Icon(
                selectedAddress ? Iconsax.tick_circle5 : null,
                color: selectedAddress
                    ? dark
                        ? TColors.light
                        : TColors.dark.withOpacity(0.8)
                    : null,
              ),
            ),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('John Doe',maxLines: 1,overflow: TextOverflow.ellipsis,style:Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: TSizes.sm/2,),
                Text('0768378216',maxLines: 1,overflow: TextOverflow.ellipsis,),
                const SizedBox(height: TSizes.sm/2,),
                Text('82536 Timmy Coves, South Laina, Maine, 87665, USA',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,),
                const SizedBox(height: TSizes.sm/2,)

     ],
            )
          ],
        ));
  }
}
