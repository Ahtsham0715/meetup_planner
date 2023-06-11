import 'package:flutter/material.dart';
import 'package:meetup_planner/res/colors/app_color.dart';
import 'package:meetup_planner/res/extensions/size_extension.dart';

class CustomText extends StatelessWidget {
  final String title;
  final double fontsize;
  final Color fontcolor;
  final FontWeight fontweight;
  final TextAlign textalign;
  const CustomText({
    super.key,
    required this.title,
    this.fontsize = 18,
    this.fontcolor = AppColor.primaryColor,
    this.fontweight = FontWeight.normal,
    this.textalign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textalign,
      style: TextStyle(
        // textBaseline: TextBaseline.ideographic,
        fontWeight: fontweight,
        fontFamily: 'Nunito',
        color: fontcolor,

        fontSize: fontsize *
            context.textScaleFactorResponsive, // Use responsive font size
      ),
    );
  }
}
