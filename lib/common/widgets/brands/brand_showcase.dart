import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/TRoundedContainer.dart';
import 'brand_card.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key, required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBoarder: true,
      borderColor: TColors.darkGrey,
      padding: const EdgeInsets.all(TSizes.md),
      backgroundColor: Colors.transparent,
      margin:  const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          //brands with product Count
          const brandCard( showBoarder: false,),
          const SizedBox(height: TSizes.spaceBtwItems,),

          //brand top 3 product
          Row(
            children:
            images.map((image) => brandTopProductImagewidget(image, context)).toList(),

          )
        ],
      ),
    );
  }
}


Widget brandTopProductImagewidget(String image,context) {
  return
    Expanded(child:
    TRoundedContainer(
      height: 100,
      backgroundColor: THelperFunctions.isDarkMode(context)
          ? TColors.darkGrey
          : TColors.light,
      margin: const EdgeInsets.only(right: TSizes.sm),
      padding: const EdgeInsets.all(TSizes.md),
      child: Image(
        fit: BoxFit.contain, image: AssetImage(image),),
    ));

}