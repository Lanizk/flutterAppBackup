import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/appBar/appbar.dart';
import 'package:flutterecommerceapp/common/widgets/image/circular_image.dart';
import 'package:flutterecommerceapp/common/widgets/text/section_heading.dart';
import 'package:flutterecommerceapp/features/personalization/screen/profile/widget/profile_menu.dart';
import 'package:flutterecommerceapp/utils/constants/image_strings.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:const TAppBar(
          showBackArrow: true,
            title: Text('profile'),
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.facebook,width: 80,height: 80,),
                    TextButton(onPressed: (){}, child: const Text('change profile picture')),
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems/2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TSectionHeading(title: 'Profile Information',showActionButton: false,),
              ProfileMenu( onPressed: () {  }, title: 'Allan', value: 'branded by me',),
              ProfileMenu( onPressed: () {  }, title: 'Allan',icon: Iconsax.copy, value: 'branded by me',),
              ProfileMenu( onPressed: () {  }, title: 'Allan', value: 'branded by me',),
              ProfileMenu( onPressed: () {  }, title: 'Allan', value: 'branded by me',),
              ProfileMenu( onPressed: () {  }, title: 'Allan', value: 'branded by me',),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Center(
                child: TextButton(
                  onPressed: (){},child: const Text('Close Account', style: TextStyle(color: Colors.red),),
                ),
              )

            ],
          ),
        ),

      )
    );
  }
}


