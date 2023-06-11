import 'package:flutter/material.dart';
import 'package:meetup_planner/res/components/custom_text.dart';

import '../colors/app_color.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
      {Key? key,
      this.buttonColor = AppColor.primaryButtonColor,
      required this.text,
      required this.onPress,
      this.width = 60,
      this.height = 50,
      this.loading = false,
      this.boxshadow,
      this.borderWidth = 0.0,
      this.borderColor = Colors.transparent})
      : super(key: key);

  final bool loading;
  final CustomText text;
  final double height, width;
  final double? borderWidth;
  final VoidCallback? onPress;
  final Color buttonColor;
  final Color? borderColor;
  final List<BoxShadow>? boxshadow;

  @override
  Widget build(BuildContext context) {
    return
        // MaterialButton(
        //   onPressed: onPress,
        //   child: loading
        //       ? Center(child: CircularProgressIndicator())
        //       : Center(child: text),
        //   color: buttonColor,
        //   height: height,
        //   minWidth: width,
        //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        // );
        InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            border: Border.all(
              color: borderColor!,
              width: borderWidth!,
            ),
            boxShadow: boxshadow,
            color: buttonColor,
            borderRadius: BorderRadius.circular(50)),
        child: loading
            ? Center(child: CircularProgressIndicator())
            : Center(child: text),
      ),
    );
  }
}
