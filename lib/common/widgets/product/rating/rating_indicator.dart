import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutterecommerceapp/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class TRatingIndicator extends StatelessWidget {
  const TRatingIndicator({super.key, required this.rating});

  final double rating;

  @override
  Widget build(BuildContext context) {

    return RatingBarIndicator(
      rating:3.5,
        itemSize: 20,
        unratedColor: TColors.grey,
        itemBuilder: (_,__)=>const Icon(Iconsax.star1,color: TColors.primary,));
  }
}
