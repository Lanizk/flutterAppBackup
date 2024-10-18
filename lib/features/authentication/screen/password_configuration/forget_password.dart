import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/features/authentication/screen/password_configuration/reset_password.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //heading
          Text(
            TTexts.forgetPasswordTitle1,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(
            TTexts.forgetPasswordSubTitle1,
            style: Theme.of(context).textTheme.labelLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections*2,
          ),
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right)),
          ),
          const SizedBox(height: TSizes.spaceBtwSections,),

          //Sign in button
          SizedBox(width:double.infinity,child: ElevatedButton(onPressed: ()=>Get.off(()=>ResetPassword()), child: const Text(TTexts.submit))),
          const SizedBox(height: TSizes.spaceBtwItems,),

          //textField


          //submit button

      ],)) ,
    );
  }
}
