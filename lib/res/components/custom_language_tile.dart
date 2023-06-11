import 'package:flutter/material.dart';
import 'package:meetup_planner/res/components/custom_text.dart';

import '../colors/app_color.dart';

class CustomLanguageTile extends StatelessWidget {
  final String leadingIconPath;
  final String titleText;
  final String trailingText;
  final VoidCallback trailingonpress;
  final bool isSelected;
  const CustomLanguageTile({
    super.key,
    required this.leadingIconPath,
    required this.titleText,
    this.trailingText = '',
    required this.trailingonpress,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListTile(
        tileColor: Color(0xff146949FF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(
            color: isSelected ? AppColor.primaryColor : Color(0xffEEEEEE),
            width: isSelected ? 3.0 : 2.0,
          ),
        ),
        leading: Image.asset(leadingIconPath),
        //     SvgPicture.asset(
        //   ImageAssets.indonesia_flag,

        // ),
        title: CustomText(
          title: titleText,
          fontcolor: AppColor.whiteColor,
          fontsize: 20,
          fontweight: FontWeight.w700,
        ),
        trailing: trailingText.isEmpty
            ? Center()
            : InkWell(
                onTap: trailingonpress,
                child: CustomText(
                  title: trailingText,
                  fontcolor: AppColor.whiteColor,
                  fontsize: 16,
                  fontweight: FontWeight.w700,
                ),
              ),
      ),
    );
  }
}
