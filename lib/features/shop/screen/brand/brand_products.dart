import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/appBar/appbar.dart';
import 'package:flutterecommerceapp/common/widgets/brands/brand_card.dart';
import 'package:flutterecommerceapp/common/widgets/product/sortable/sortable.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Nike'),),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            //Brand Detail
            brandCard(showBoarder: true),
            SizedBox(height: TSizes.spaceBtwSections,),
            TSortableProducts()
          ],
        ),),
      ),
    );
  }
}
