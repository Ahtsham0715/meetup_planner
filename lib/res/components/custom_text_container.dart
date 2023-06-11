import 'package:flutter/material.dart';

import '../colors/app_color.dart';
import 'custom_text.dart';

class CustomTextContainer extends StatelessWidget {
  final String title;

  CustomTextContainer({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5.0,
        vertical: 15.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.shade500,
          width: 1.0,
        ),
      ),
      child: CustomText(
        title: title,
        textalign: TextAlign.center,
        fontcolor: AppColor.secondaryTextColor,
        fontsize: 20,
        fontweight: FontWeight.w700,
      ),
    );
  }
}
