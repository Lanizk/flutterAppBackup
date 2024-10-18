import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/custom_shapes/containers/TRoundedContainer.dart';
import 'package:flutterecommerceapp/common/widgets/products_cart/cart_item.dart';
import 'package:flutterecommerceapp/common/widgets/success_screen/success_screen.dart';
import 'package:flutterecommerceapp/features/shop/screen/cart/widget/carts_item.dart';
import 'package:flutterecommerceapp/features/shop/screen/checkout/widgets/billing_address_section.dart';
import 'package:flutterecommerceapp/features/shop/screen/checkout/widgets/billing_payment_section.dart';
import 'package:flutterecommerceapp/features/shop/screen/checkout/widgets/billling_amount_section.dart';
import 'package:flutterecommerceapp/navigation_menu.dart';
import 'package:flutterecommerceapp/utils/constants/colors.dart';
import 'package:flutterecommerceapp/utils/constants/image_strings.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';
import 'package:flutterecommerceapp/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/widgets/appBar/appbar.dart';
import '../../../../common/widgets/products_cart/coupunwwidget.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //--Items in cart
              TCartsItems(
                showAddRemoveButtons: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //--- Coupon TextField
              TCouponCode(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //--Billing Station
              TRoundedContainer(
                showBoarder: true,
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    //pricing
                    BillingAmountSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    //Divider
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    //Payment Methods
                    BillingPaymentSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    TBillingAddreessSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => successScreen(
                image: TImages.promoBanner2,
                title: 'Payment Success',
                subTitle: 'Your Item will be shipped soon',
                onPressed: () => Get.offAll(() => const NavigationMenu()))),
            child: const Text('CheckOut \$256.0')),
      ),
    );
  }
}
