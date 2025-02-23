import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/features/shop/control/home_controller.dart';
import 'package:flutterecommerceapp/utils/constants/colors.dart';
import 'package:get/get.dart';

import '../../../../../common/image/t_rounded_image.dart';
import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banners,
  });
  final List <String> banners;

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(viewportFraction: 1,onPageChanged: (index, _)=>controller.updatePageIndicator(index)),
          items: banners.map((url) => TRoundedImage(imageUrl: url)).toList(),
            ),


        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
              ()=>
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                   TCircularWidget(
                    width: 20,
                    height: 4,
                    background: controller.carousalCurrentIndex.value==i?TColors.primary:TColors.grey,
                    margin:const EdgeInsets.only(right: 10),

                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}