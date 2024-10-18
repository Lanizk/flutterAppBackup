import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/text/section_heading.dart';

import '../../../../../utils/constants/sizes.dart';

class TBillingAddreessSection extends StatelessWidget {
  const TBillingAddreessSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address',buttonTitle: 'Change',onPressed: (){},),
        Text('Coding with T',style: Theme.of(context).textTheme.bodyLarge,),

        Row(
          children: [
            const Icon(Icons.phone,color: Colors.grey,size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('0768 378 216', style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.location_history,color: Colors.grey,size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('South Liana, 56473 lagos, USA', style: Theme.of(context).textTheme.bodyMedium,softWrap: true,)
          ],
        ),
      ],
    );
  }
}
