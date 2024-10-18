import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../image/circular_image.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, required this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(image: TImages.google,width: 50,height: 50,padding: 0,),
      title: Text('Allan Murimi',style: Theme.of(context).textTheme.headlineSmall!.apply(color:TColors.white),),
      subtitle: Text('allanmurimi96@gmail.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color:TColors.white),),
      trailing: IconButton(onPressed: (){},icon: const Icon(Iconsax.edit, color:TColors.white),),
    );
  }
}