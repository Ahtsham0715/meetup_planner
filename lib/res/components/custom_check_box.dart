import 'package:flutter/material.dart';
import 'package:meetup_planner/res/colors/app_color.dart';
import 'package:meetup_planner/res/extensions/size_extension.dart';

class CustomCheckBox extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function(bool?)? onChanged;

  CustomCheckBox(
      {required this.isChecked, required this.onChanged, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          value: isChecked,
          onChanged: onChanged,
          checkColor: Colors.white,
          activeColor: Color(0xFF6949FF),
        ),
        Text(
          title,
          style: TextStyle(
            // textBaseline: TextBaseline.ideographic,
            fontWeight: FontWeight.w500,
            fontFamily: 'Nunito',
            color: AppColor.whiteColor,

            fontSize: 18 *
                context.textScaleFactorResponsive, // Use responsive font size
          ),
        ),
      ],
    );
  }
}
