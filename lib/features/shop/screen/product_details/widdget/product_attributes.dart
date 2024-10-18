import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/custom_shapes/containers/TRoundedContainer.dart';
import 'package:flutterecommerceapp/common/widgets/text/product_price_text.dart';
import 'package:flutterecommerceapp/common/widgets/text/product_title_text.dart';
import 'package:flutterecommerceapp/common/widgets/text/section_heading.dart';
import 'package:flutterecommerceapp/utils/constants/colors.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';
import 'package:flutterecommerceapp/utils/helpers/helper_functions.dart';

import '../../../../../common/choicchip/choce_chip.dart';

class ProductAttribute extends StatelessWidget {
  const ProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              //title,price and stock status
              Row(
                children: [
                  const TSectionHeading(
                    title: 'Variations',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'price: ',
                            smallSize: true,
                          ),

                          //Actual price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          //Sale price
                          const TProductPriceText(price: '20')
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Stock: ',
                            smallSize: true,
                          ),
                          Text(
                            'In stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              //variation description
              const TProductTitleText(
                title:
                    'This is  a description of a product and can go upto a max of 4 lines',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        //Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(spacing: 8, children: [
              TChoiceChip(
                text: 'Green',
                selected: false,
                onSelected: (value) {},
              ),
              TChoiceChip(
                text: 'Yellow',
                selected: false,
                onSelected: (value) {},
              ),
              TChoiceChip(
                text: 'Blue',
                selected: false,
                onSelected: (value) {},
              ),
            ]),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: 'Size',
              showActionButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(spacing: 8, children: [
              TChoiceChip(
                text: 'Eu 34',
                selected: false,
                onSelected: (value) {},
              ),
              TChoiceChip(
                text: 'Eu 36',
                selected: false,
                onSelected: (value) {},
              ),
              TChoiceChip(
                text: 'Eu 38',
                selected: false,
                onSelected: (value) {},
              ),
            ]),
          ],
        )
      ],
    );
  }
}
