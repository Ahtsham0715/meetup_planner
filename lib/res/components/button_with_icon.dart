import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meetup_planner/res/colors/app_color.dart';
import 'package:meetup_planner/res/components/custom_text.dart';
import 'package:meetup_planner/res/extensions/size_extension.dart';

class ButtonWithIcon extends StatelessWidget {
  final String title;
  final Color? borderColor;
  final double? borderWidth;
  final Color? backgroundColor;
  final Color? textColor;
  final Widget icon;
  final VoidCallback onpress;
  const ButtonWithIcon(
      {super.key,
      required this.title,
      this.borderColor = Colors.transparent,
      this.backgroundColor = AppColor.primaryColor,
      this.textColor = AppColor.whiteColor,
      required this.icon,
      this.borderWidth = 0,
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.blockSizeHorizontal * 40,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(color: borderColor!, width: borderWidth!),
          ),
          backgroundColor: backgroundColor,
        ),
        onPressed: onpress,
        icon: icon,
        label: CustomText(
          title: title,
          fontsize: 18,
          fontcolor: textColor!,
          fontweight: FontWeight.w700,
        ),
      ),
    );
  }
}
