import 'package:flutter/material.dart';
import 'package:meetup_planner/res/components/custom_text.dart';

import '../colors/app_color.dart';

class CustomChip extends StatelessWidget {
  final String text;
  final String? selectedText;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? labelpadding;
  final bool isSelected;
  final Color? selectedBackgroundColor;
  final Color? selectedtextColor;
  final Color? unselectedBackgroundColor;
  final Color? unselectedtextColor;
  final VoidCallback? onpress;
  const CustomChip(
      {super.key,
      required this.text,
      this.onpress,
      required this.isSelected,
      this.padding = const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
      this.labelpadding = const EdgeInsets.symmetric(horizontal: 8.0),
      this.selectedBackgroundColor,
      this.selectedText,
      this.selectedtextColor,
      this.unselectedBackgroundColor = AppColor.whiteColor,
      this.unselectedtextColor = AppColor.blackColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding!,
      child: InkWell(
        onTap: onpress,
        child: Chip(
          labelPadding: labelpadding!,
          backgroundColor: isSelected
              ? selectedBackgroundColor ?? AppColor.greyColor.withOpacity(0.2)
              : unselectedBackgroundColor,
          padding: const EdgeInsets.all(8.0),
          shape: StadiumBorder(
            side: BorderSide(
              width: isSelected ? 0 : 1,
              color: selectedBackgroundColor ??
                  unselectedBackgroundColor ??
                  AppColor.greyColor.withOpacity(0.2),
            ),
          ),
          label: CustomText(
            title:
                isSelected ? selectedText ?? ''.padLeft(text.length * 2) : text,
            fontcolor: isSelected
                ? selectedtextColor ?? AppColor.greyColor.withOpacity(0.2)
                : unselectedtextColor!,
            textalign: TextAlign.center,
            fontsize: 18,
            fontweight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
