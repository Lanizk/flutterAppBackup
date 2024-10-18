import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/image/t_rounded_image.dart';
import 'package:flutterecommerceapp/common/widgets/appBar/appbar.dart';
import 'package:flutterecommerceapp/common/widgets/product_cards/product_horizontal_card.dart';
import 'package:flutterecommerceapp/common/widgets/text/section_heading.dart';
import 'package:flutterecommerceapp/utils/constants/image_strings.dart';

import '../../../../utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Sports shirts'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Banner
              TRoundedImage(
                width: double.infinity,
                imageUrl: TImages.promoBanner3,
                applyImageRadius: true,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Sub Categories
              Column(
                children: [
                  // Heading
                  TSectionHeading(title: 'Sports Shirts', onPressed: () {}),
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),

                  SizedBox(
                      height: 120,

                      child: ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(
                                width: TSizes.spaceBtwItems,
                              ),
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) =>
                              const ProductHorizontalScreen())),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
