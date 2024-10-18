import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/appBar/appbar.dart';
import 'package:flutterecommerceapp/features/shop/screen/cart/widget/carts_item.dart';
import 'package:flutterecommerceapp/features/shop/screen/checkout/checkout.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding:  EdgeInsets.all(TSizes.defaultSpace),
        child: TCartsItems(),
      ),
      bottomNavigationBar: Padding(
        padding:const  EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: ()=> Get.to(()=>const CheckOut()), child: const Text('CheckOut \$256.0')),
      ),
    );
  }
}




