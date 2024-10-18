import 'package:flutter/material.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection  ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            Expanded(child: Text('SubTotal',style: Theme.of(context).textTheme.bodyMedium,)),
            Text('\$256.0',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
// shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6.0',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
//Tax
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6.0',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        //order fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6.0',style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
      ],

    );
  }}