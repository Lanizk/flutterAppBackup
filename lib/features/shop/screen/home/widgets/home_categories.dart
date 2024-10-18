import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/features/shop/screen/sub_category/sub_categories.dart';
import 'package:flutterecommerceapp/utils/constants/image_strings.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/common_image_widget_text/vertical_image_text.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height:80,
        child:ListView.builder(
            shrinkWrap: true,
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index){
              return TVerticalImageText(image: TImages.productSaleIllustration, title: 'shoes',onTap: ()=>Get.to(()=>SubCategoriesScreen()),);

            })
    );
  }
}