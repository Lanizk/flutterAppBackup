import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';

import '../../../../utils/constants/colors.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer(
      {super.key,
        this.width,
        this.height,
        this.radius = TSizes.cardRadiusLg,
        this.padding ,
        this.child,
        this.backgroundColor= TColors.white,
        this.margin,this.borderColor=TColors.borderPrimary,  this.showBoarder=false});

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget? child;
  final bool showBoarder;
  final Color backgroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,

      decoration: BoxDecoration(
        color: backgroundColor,
        border:showBoarder? Border.all(color: borderColor):null,
        borderRadius: BorderRadius.circular(radius),


      ),
      child: child,
    );
  }
}