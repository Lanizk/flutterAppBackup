import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/features/shop/screen/order/widget/order_list.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';

import '../../../../common/widgets/appBar/appbar.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: TAppBar(title:Text('My Orders',style: Theme.of(context).textTheme.headlineSmall,),showBackArrow: true,),
      body: const Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
      child: TOrderListItems(),),
    );
  }
}
