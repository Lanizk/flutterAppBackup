import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/layout/grid_layout.dart';
import 'package:flutterecommerceapp/common/widgets/product_cards/product_vertical_card.dart';
import 'package:flutterecommerceapp/common/widgets/text/section_heading.dart';

import '../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:[ Padding(
        padding:  EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          //brands
          children: [
            const TBrandShowCase(
              images: [
                TImages.promoBanner3,
                TImages.promoBanner3,
                TImages.promoBanner3
              ],
            ),
      
            //products
            TSectionHeading(title: 'you might like',onPressed: (){},),
            const SizedBox(height: TSizes.spaceBtwItems,),
      
            GridLayout(itemCount: 4,itemBuilder: (_,index)=>const TProductVerticalCard(),),
            const SizedBox(height:TSizes.spaceBtwSections),
          ],
        ),
      ),
    ]);
  }
}
