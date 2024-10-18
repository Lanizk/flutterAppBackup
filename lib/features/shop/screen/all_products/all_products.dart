import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/appBar/appbar.dart';
import 'package:flutterecommerceapp/common/widgets/product_cards/product_vertical_card.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/product/sortable/sortable.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
          title: Text('Popular products',), showBackArrow: true,
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: TSortableProducts(),
    ),
    ),
    );
  }
}


