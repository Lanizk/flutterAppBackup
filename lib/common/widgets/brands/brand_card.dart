import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/TRoundedContainer.dart';
import '../image/circular_image.dart';
import '../text/t_brand_title_with_verified_icon.dart';

class brandCard extends StatelessWidget {
  const brandCard({
    super.key, required this.showBoarder, this.onTap,
  });
  final bool showBoarder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBoarder: showBoarder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: TCircularImage(
                image: TImages.facebook,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overLayColor:
                THelperFunctions.isDarkMode(context)
                    ? TColors.white
                    : TColors.black,
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),

            //Text
            Expanded(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      const TBrandTitleTextWithVerifiedIcon(
                        title: 'Nike',
                        brandTextSize: TextSizes.large,
                      ),
                      Text(
                        '256 products',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium,
                      )
                    ]))
          ],
        ),
      ),
    );
  }
}