import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/appBar/appbar.dart';
import 'package:flutterecommerceapp/common/widgets/custom_shapes/containers/TRoundedContainer.dart';
import 'package:flutterecommerceapp/features/personalization/screen/address/widgets/single_address.dart';
import 'package:flutterecommerceapp/utils/constants/colors.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import 'add_adress.dart';

class UserCenteredScreen extends StatelessWidget {
  const UserCenteredScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddAddressScreen()),
        child: Icon(
          Iconsax.add,
          color: TColors.white,
        ),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
        body:const SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),child: Column(
            children: [
              TSingleAddress(selectedAddress: true),
              TSingleAddress(selectedAddress: false),
            ],
          ),),
        )
    );
  }
}
