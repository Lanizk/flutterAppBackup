import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutterecommerceapp/utils/helpers/helper_functions.dart';

import '../../utils/constants/colors.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? TColors.white : null),
        avatar: isColor
            ? TCircularWidget(
                width: 50,
                height: 50,
                background: THelperFunctions.getColor(text)!)
            : null,
        shape: isColor ? CircleBorder() : null,
        labelPadding: isColor ? EdgeInsets.all(0) : null,
        padding: isColor ? EdgeInsets.all(0) : null,
        selectedColor: Colors.green,
        backgroundColor: isColor ? Colors.green : null,
      ),
    );
  }
}
