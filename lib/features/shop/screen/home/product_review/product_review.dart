import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutterecommerceapp/common/widgets/appBar/appbar.dart';
import 'package:flutterecommerceapp/features/shop/screen/home/product_review/widget/progress_indicator_and_rating.dart';
import 'package:flutterecommerceapp/features/shop/screen/home/product_review/widget/rating_progress_indicator.dart';
import 'package:flutterecommerceapp/features/shop/screen/home/product_review/widget/user_review_card.dart';
import 'package:flutterecommerceapp/utils/constants/colors.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';
import 'package:flutterecommerceapp/utils/device/device_util.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/product/rating/rating_indicator.dart';

class ProductReview extends StatelessWidget {
  const ProductReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//--Appbar
      appBar: const TAppBar(
        title: Text('Reviews and dating'),
        showBackArrow: true,
      ),
      //--body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verified and are from people who use the same type of device you use'),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              //Overall Product Ratings
               const TOveralProductRataing(),
              TRatingIndicator(rating: 3.5,),
              Text("12,611",style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //User reviews list
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}


