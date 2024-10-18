import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/features/authentication/screen/password_configuration/forget_password.dart';
import 'package:flutterecommerceapp/navigation_menu.dart';
import 'package:flutterecommerceapp/utils/constants/sizes.dart';
import 'package:flutterecommerceapp/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../signUp_widget/sign_up.dart';
import '../widgets/social_media.dart';
import '../widgets/tform_divider.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold
    (
        body: SingleChildScrollView(
    child: Padding(
    padding: TSpacingStyle.paddingWithAppBarHeight,
    child: Column(
    children:[
    Column(
    crossAxisAlignment:CrossAxisAlignment.start,
    children:[
        Image(height:150,
        image:AssetImage(dark ?TImages.darkAppLogo:TImages.lightAppLogo)),
    Text(TTexts.loginTitle1,style: Theme.of(context).textTheme.headlineMedium,),
    const SizedBox(height:TSizes.sm),
    Text(TTexts.loginSubTitle1,style: Theme.of(context).textTheme.headlineSmall,)
    ],
    ),

    //form

    Form(child: Padding(
    padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
    child: Column(
    children: [
    //email
    TextFormField(
    decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right),labelText:TTexts.email ),
    ),
    const SizedBox(height: TSizes.spaceBtwInputField),
    TextFormField(
    decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check),labelText:TTexts.password,suffixIcon: Icon(Iconsax.eye_slash) ),
    ),
    const SizedBox(height: TSizes.spaceBtwInputField/2),
    //Remember me and forgot password
    Row(
    children: [
    //remember me
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:[
    Checkbox(value: true, onChanged:(value){}),
    const Text(TTexts.rememberMeTitle1),]),
      const SizedBox(height: TSizes.spaceBtwItems,),
    // Forgot password
    TextButton(onPressed: ()=>Get.to(()=>const ForgetPassword()), child: const Text(TTexts.forgotPassword)),
    ]
    ),
    const SizedBox(height: TSizes.spaceBtwSections,),

    //Sign in button
    SizedBox(width:double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>const NavigationMenu()), child: const Text(TTexts.signIn))),
      const SizedBox(height: TSizes.spaceBtwItems,),
    //create account button
    SizedBox(width:double.infinity,child:OutlinedButton(onPressed: ()=>Get.to(()=>const SignUpScreen()), child: const Text(TTexts.createAccount))),
    ],
    ),
    )
    ),
      ///divider
      const TFormDivider(dividerText: TTexts.orSignInWith),
const SizedBox(height: TSizes.spaceBtwSections,),
      //footer
      const TSocialMedia()],


    )


    )
    ,
    ));
  }
}






