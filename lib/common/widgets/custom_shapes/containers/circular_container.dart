import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class TCircularWidget extends StatelessWidget {
  const TCircularWidget(
      {super.key,
      this.width = 400,
      this.height = 400,
      this.radius = 400,
      this.padding = 0,
      this.child,
      this.background = TColors.white,
      this.margin});

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        //color: TColors.textWhite.withOpacity(0.1),
        color: background,
      ),
    );
  }
}
