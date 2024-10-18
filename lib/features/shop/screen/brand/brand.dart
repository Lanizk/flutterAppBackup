import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/appBar/appbar.dart';
import 'package:flutterecommerceapp/common/widgets/brands/brand_card.dart';
import 'package:flutterecommerceapp/common/widgets/layout/grid_layout.dart';
import 'package:flutterecommerceapp/common/widgets/product/sortable/sortable.dart';
import 'package:flutterecommerceapp/common/widgets/text/section_heading.dart';
import 'package:flutterecommerceapp/features/shop/screen/brand/brand_products.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Brands'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Heading
              TSectionHeading(title: 'Brands'),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              //Brands
              GridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) =>  brandCard(
                        showBoarder: true,
                        onTap: () => Get.to(() =>brandCard(showBoarder: true,onTap: ()=>Get.to(()=>BrandProducts()),) ),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
