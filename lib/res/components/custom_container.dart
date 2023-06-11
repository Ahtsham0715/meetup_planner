import 'package:flutter/material.dart';

import 'package:meetup_planner/res/extensions/size_extension.dart';

import '../colors/app_color.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final double? opacity;
  final bool? isSelected;
  final Color? SelectedBorderColor;
  final Color? backgroundColor;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Color? BorderColor;
  const CustomContainer({
    super.key,
    required this.child,
    this.SelectedBorderColor = AppColor.primaryColor,
    this.isSelected = false,
    this.width,
    this.height,
    this.BorderColor = AppColor.greyColor,
    this.opacity = 0.2,
    this.margin = const EdgeInsets.symmetric(vertical: 15.0),
    this.padding,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? context.blockSizeVertical * 10,
      width: width ?? context.blockSizeHorizontal * 90,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: isSelected!
            ? Color(0xff146949FF)
            : backgroundColor ?? AppColor.whiteColor,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          width: isSelected! ? 3.0 : 2.0,
          color: isSelected!
              ? SelectedBorderColor!
              : BorderColor!.withOpacity(opacity!),
        ),
      ),
      child: child,
    );
  }
}
