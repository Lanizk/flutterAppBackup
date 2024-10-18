import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/appBar/appbar.dart';
import 'package:flutterecommerceapp/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutterecommerceapp/common/widgets/layout/grid_layout.dart';
import 'package:flutterecommerceapp/common/widgets/product_cards/product_vertical_card.dart';
import 'package:flutterecommerceapp/features/shop/screen/home/home.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../utils/constants/sizes.dart';

class WishScreen extends StatelessWidget {
  const WishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(itemCount: 4,itemBuilder: (_,index)=>const TProductVerticalCard(),)
            ],
          ),
        ),
      ),
    );
  }
}
