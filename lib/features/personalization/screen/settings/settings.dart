import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/appBar/appbar.dart';
import 'package:flutterecommerceapp/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutterecommerceapp/common/widgets/listtiles/settings_menu_tile.dart';
import 'package:flutterecommerceapp/common/widgets/text/section_heading.dart';
import 'package:flutterecommerceapp/features/personalization/screen/address/address.dart';
import 'package:flutterecommerceapp/features/shop/screen/order/order.dart';
import 'package:flutterecommerceapp/features/shop/screen/order/widget/order_list.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/listtiles/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                TAppBar(
                    title: Text(
                  'Account',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .apply(color: TColors.white),
                )),
                //user profile card
                 TUserProfileTile(onPressed:()=> Get.to(()=>const ProfileScreen())),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                )
              ],
            ),
          ),
          //Body
          Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //Account Settings
                  const TSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'set shopping delivery address',
                    onTap: ()=>Get.to(()=>const UserCenteredScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, Remove products, Add to check out',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In progress and completed orders',
                    onTap: () =>Get.to(()=>const OrdersScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'My Account',
                    subTitle: 'Withdraw balance to registered bank accounts',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'list of all discounted coupons',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'My Notification',
                    subTitle: 'set any kind of notification message',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'My Account Privacy',
                    subTitle: 'manage data usage and connected accounts',
                    onTap: () {},
                  ),

                  //App settings
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load data',
                    subTitle: 'upload data to your cloud firebase',
                    onTap: () {},
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  //log out
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){},child: const Text('LogOut'),),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections*2.5,),
                ],
              ))
        ]),
      ),
    );
  }
}
