import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/text/section_heading.dart';
import 'package:flutterecommerceapp/features/shop/screen/home/product_review/product_review.dart';
import 'package:flutterecommerceapp/features/shop/screen/product_details/widdget/bottom_add_to_cart_widget.dart';
import 'package:flutterecommerceapp/features/shop/screen/product_details/widdget/product_attributes.dart';
import 'package:flutterecommerceapp/features/shop/screen/product_details/widdget/product_image_detail_slider.dart';
import 'package:flutterecommerceapp/features/shop/screen/product_details/widdget/product_meta_data.dart';
import 'package:flutterecommerceapp/features/shop/screen/product_details/widdget/rating_share_widget.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';
import 'package:flutterecommerceapp/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //-product image slider
            TProductImageSlider(),

            //product details
            Padding(
              padding:const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  ///- Rating & share button
                  const TRatingAndShare(),

                  /// price,title,stock & brand
                const   TProductionMetaData(),

                  //Atributes
                 const ProductAttribute(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //checkout button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Check Out'))),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  const TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  // const ReadMoreText(
                  //   'this is a product...'
                  //       trimlines:2,
                  //   trimode:Trim
                  // )

                  //Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      const TSectionHeading(title: 'Reviews(199)',showActionButton: false,),
                      IconButton(onPressed: ()=>Get.to(()=>ProductReview()), icon: const Icon(Iconsax.arrow_right_3,size: 18,))
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
