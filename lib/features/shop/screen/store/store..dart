import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/appBar/appbar.dart';
import 'package:flutterecommerceapp/common/widgets/appBar/t_tab_bar.dart';
import 'package:flutterecommerceapp/common/widgets/custom_shapes/containers/TRoundedContainer.dart';
import 'package:flutterecommerceapp/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutterecommerceapp/common/widgets/layout/grid_layout.dart';
import 'package:flutterecommerceapp/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:flutterecommerceapp/common/widgets/text/section_heading.dart';
import 'package:flutterecommerceapp/features/shop/screen/brand/brand.dart';
import 'package:flutterecommerceapp/features/shop/screen/store/widget/category_tab.dart';
import 'package:flutterecommerceapp/utils/constants/enums.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';
import 'package:flutterecommerceapp/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../common/widgets/image/circular_image.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/text/t_brand_title_with_verified_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../brand/brand_products.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: THelperFunctions.isDarkMode(context)
                        ? TColors.black
                        : TColors.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: EdgeInsets.all(TSizes.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          //Search Bar
                          const SizedBox(
                            height: TSizes.spaceBtwItems,
                          ),
                          const TSearchContainer(
                            text: 'Search in Store',
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero,
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwSections,
                          ),

                          //featured brands
                          TSectionHeading(
                            title: 'Featured brands',
                            onPressed:  ()=>Get.to(()=>AllBrandsScreen()),
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwItems / 2,
                          ),

                          GridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const brandCard(
                                showBoarder: false,
                              );
                            },
                          )
                        ],
                      ),
                    ),
                    bottom: const TTabBar(
                      tabs: [
                        Tab(
                          child: Text('sports'),
                        ),
                        Tab(
                          child: Text('Furniture'),
                        ),
                        Tab(
                          child: Text('Electronics'),
                        ),
                        Tab(
                          child: Text('Clothes'),
                        ),
                        Tab(
                          child: Text('Cosmetics'),
                        ),
                      ],
                    ))
              ];
            },
            body: TabBarView(
              children: [
               TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
              ],
            )),
      ),
    );
  }
}
