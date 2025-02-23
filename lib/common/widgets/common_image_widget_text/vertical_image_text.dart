import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key, required this.image,this.textColor=TColors.white, this.backgroundColor=TColors.white, this.onTap, required this.title,
  });

  final String image;
  final String title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(padding: const EdgeInsets.only(right:TSizes.spaceBtwItems),
          child:Column(
            children: [
              Container(
                width: 56,
                height: 56,
                padding: const EdgeInsets.all(TSizes.sm),
                decoration: BoxDecoration(
                  color:backgroundColor ?? (THelperFunctions.isDarkMode(context)?TColors.black:TColors.white),
                  borderRadius: BorderRadius.circular(100),

                ),
                child:  Center(
                  child: Image(image: AssetImage(image),fit: BoxFit.cover,color: THelperFunctions.isDarkMode(context)?TColors.dark:TColors.light,),
                ),
              ),
              //Text
              const SizedBox(height: TSizes.spaceBtwItems/2,),
              Flexible(
                child: SizedBox(
                    width:55,
                    child:Center(
                      child: Text(
                        title,
                        style:Theme.of(context).textTheme.labelMedium!.apply(color:textColor),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                ),
              )
            ],
          )),
    );
  }
}