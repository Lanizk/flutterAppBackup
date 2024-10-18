
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layout/grid_layout.dart';
import '../../product_cards/product_vertical_card.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //DropDown
      DropdownButtonFormField(decoration: const InputDecoration(
          prefixIcon: Icon(Iconsax.sort)), items: ['Name', 'Higher price',
        'Lower price', 'Sale', 'Newest', 'Popularity'].map((option)=>
          DropdownMenuItem(value: option,child: Text(option))).toList(), onChanged: (value) {}),
      const SizedBox(height: TSizes.spaceBtwInputField,),
      ///Products
      GridLayout(itemCount: 8, itemBuilder: (_, index )=>const TProductVerticalCard(),)
    ],);
  }
}