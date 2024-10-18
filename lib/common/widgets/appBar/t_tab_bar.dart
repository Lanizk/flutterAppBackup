import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/utils/constants/colors.dart';
import 'package:flutterecommerceapp/utils/device/device_util.dart';
import 'package:flutterecommerceapp/utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({super.key, required this.tabs});

  final List <Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Material(
      color: dark?TColors.black:TColors.white,
      child: TabBar(
      isScrollable: true,
      indicatorColor: TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
        labelColor: THelperFunctions.isDarkMode(context)?TColors.white:TColors.dark, tabs: tabs,


    ));
  }

  @override
  Size get preferredSize=>Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
