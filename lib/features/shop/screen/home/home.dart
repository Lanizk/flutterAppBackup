import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/product_cards/product_vertical_card.dart';
import 'package:flutterecommerceapp/features/shop/screen/all_products/all_products.dart';
import 'package:flutterecommerceapp/features/shop/screen/home/widgets/home_appbar.dart';
import 'package:flutterecommerceapp/features/shop/screen/home/widgets/home_categories.dart';
import 'package:flutterecommerceapp/features/shop/screen/home/widgets/promo_slider.dart';
import 'package:flutterecommerceapp/utils/constants/image_strings.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/text/section_heading.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        const TPrimaryHeaderContainer(
            child: Column(
          children: [
            THomeBar(),
            SizedBox(height: TSizes.spaceBtwSections),
            // searchBar
            TSearchContainer(
              text: 'search in the store',
            ),
            SizedBox(height: TSizes.spaceBtwSections),
            // categories
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TSectionHeading(
                    title: 'Popular products',
                    showActionButton: false,
                    textColor: Colors.white,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),
                  //Categories
                  THomeCategories(),
                ],
              ),
            ),

SizedBox(height: TSizes.spaceBtwSections,),
          ],
        )),
        //Body
        Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TPromoSlider(
                  banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
                TSectionHeading(
                  title: 'Popular Products',
                  onPressed: () =>Get.to(()=>const AllProducts()),
                ),
                GridLayout(
                  itemCount: 2,
                  itemBuilder: (_, index) => const TProductVerticalCard(),
                )
              ],
            ))
      ],
    )));
  }
}
