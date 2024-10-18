import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/text/t_brand_title_text.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';

class TBrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Flexible(
        child: TBrandTitle(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextsizes: brandTextSize,
        ),
      ),
      const SizedBox(
        width: TSizes.xs,
      ),
      const Icon(
        Iconsax.verify5,
        color: TColors.primary,
        size: TSizes.iconXs,
      )
    ]);
  }
}
