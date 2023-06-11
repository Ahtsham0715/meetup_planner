import 'package:flutter/material.dart';
import 'package:meetup_planner/res/extensions/size_extension.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double fontsize;
  final Color fontcolor;
  final FontWeight fontweight;
  final TextAlign textalign;
  const CustomTextButton({
    required this.text,
    required this.onPressed,
    this.fontsize = 18,
    this.fontcolor = const Color(0xFF6949FF),
    this.fontweight = FontWeight.normal,
    this.textalign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      // style: ButtonStyle(
      //   foregroundColor: MaterialStateProperty.all<Color>(
      //     Color(0xFF6949FF),
      //   ),
      // ),
      child: Text(
        text,
        textAlign: textalign,
        style: TextStyle(
          // textBaseline: TextBaseline.ideographic,
          fontWeight: fontweight,
          fontFamily: 'Nunito',
          color: fontcolor,
          fontSize: fontsize *
              context.textScaleFactorResponsive, // Use responsive font size
        ),
      ),
    );
  }
}
