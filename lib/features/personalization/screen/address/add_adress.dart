import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/appBar/appbar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
          showBackArrow: true,
          title: Text('Add new adress'),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.user), labelText: 'name'),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputField,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.mobile),
                          labelText: 'phone number'),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputField,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.building_31),
                              labelText: 'Street'),
                        )),
                        const SizedBox(
                          width: TSizes.spaceBtwInputField,
                        ),
                        Expanded(
                            child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.code),
                              labelText: 'Street'),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputField,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.building),
                              labelText: 'City'),
                        )),
                        const SizedBox(
                          width: TSizes.spaceBtwInputField,
                        ),
                        Expanded(
                            child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.activity),
                              labelText: 'State'),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputField,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.global),
                          labelText: 'Country'),
                    ),
                    const SizedBox(
                      height: TSizes.defaultSpace,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Save'),
                      ),
                    )
                  ],
                )))));
  }
}
