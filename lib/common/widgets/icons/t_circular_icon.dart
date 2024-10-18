import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
     this.height, this.width, this.size=TSizes.lg, required this.icon, this.color, this.backgroundColor, this.onPressed,
  });

  final double? height,width,size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;



  @override
  Widget build(BuildContext context) {

    return Container(
        width:width,
        height:height ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor !=null?backgroundColor!:THelperFunctions.isDarkMode(context)? TColors.black.withOpacity(0.9):TColors.light.withOpacity(0.9),
        ),
        child: IconButton(onPressed: onPressed, icon:Icon(icon,color: color,size: size,),
        ));
  }
}