import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutterecommerceapp/common/widgets/custom_shapes/containers/TRoundedContainer.dart';
import 'package:flutterecommerceapp/common/widgets/product/rating/rating_indicator.dart';
import 'package:flutterecommerceapp/features/shop/screen/home/product_review/widget/progress_indicator_and_rating.dart';
import 'package:flutterecommerceapp/utils/constants/colors.dart';
import 'package:flutterecommerceapp/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../../utils/constants/sizes.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.google),),
                const  SizedBox(width: TSizes.spaceBtwSections,),
                Text('John Doe',style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        //Review
        Row(
          children: [
       const TRatingIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('01 Nov,2023', style:Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        const ReadMoreText(
          'The user interface of the app is more intuitive i was able to seamlessly purchase and get my products on time',
          trimLines: 2,
          trimMode:TrimMode.Line,
          trimExpandedText: 'Show less',
          trimCollapsedText: 'Show more',
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
          lessStyle:  TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
        ),

        //Company Review
        TRoundedContainer(
          backgroundColor: dark?TColors.darkerGrey:TColors.grey,
          child:Padding(padding: const EdgeInsets.all(TSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('T Stores', style:Theme.of(context).textTheme.titleMedium),
                  Text('01 Nov, 2023', style:Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              const ReadMoreText(
                'The user interface of the app is more intuitive i was able to seamlessly purchase and get my products on time',
                trimLines: 2,
                trimMode:TrimMode.Line,
                trimExpandedText: 'Show less',
                trimCollapsedText: 'Show more',
                moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
                lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
              ),
            ],
          ),)
        ),
        const SizedBox(height: TSizes.spaceBtwSections,)
      ],
    );
  }
}
