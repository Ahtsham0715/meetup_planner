import 'package:flutter/material.dart';
import 'package:meetup_planner/res/extensions/size_extension.dart';

import '../colors/app_color.dart';

class CustomFormField extends StatelessWidget {
  String title;
  TextEditingController fieldcontroller;
  // final FocusNode focusnode;
  final List<Color> gradientcolors;
  // final bool isgradientborder;
  final bool ispassword;
  final bool? readonly;
  final onchange;
  final onsaved;
  final TextInputType keyboardtype;
  final Widget? sIcon;
  Color bgColor;
  Color fgColor;
  Color bdColor;
  double bottomLeftRadius;
  double topLeftRadius;
  double bottomRightRadius;
  double topRightRadius;
  double? width;
  double? height;
  double? fontsize;
  double bdwidth;
  final Color? fontColor;
  CustomFormField({
    super.key,
    required this.title,
    // this.isgradientborder = true,
    this.ispassword = false,
    this.onchange,
    this.onsaved,
    // required this.focusnode,
    this.keyboardtype = TextInputType.text,
    this.gradientcolors = const [Colors.red, Colors.blue],
    this.bgColor = AppColor.whiteColor,
    this.fgColor = AppColor.blackColor,
    this.bdColor = AppColor.greyColor,
    required this.fieldcontroller,
    this.bottomLeftRadius = 0.0,
    this.bottomRightRadius = 0.0,
    this.topLeftRadius = 0.0,
    this.topRightRadius = 0.0,
    this.height,
    this.width,
    this.fontsize,
    this.bdwidth = 2.0,
    this.sIcon,
    this.readonly = false,
    this.fontColor = AppColor.whiteColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: fieldcontroller,
      onChanged: onchange,
      readOnly: readonly!,
      // focusNode: focusnode,
      onFieldSubmitted: onsaved as Function(String?)?,
      textAlign: TextAlign.left,
      obscureText: ispassword,
      keyboardType: keyboardtype,
      cursorColor: Color(0xFF856CF3),
      style: TextStyle(
        // textBaseline: TextBaseline.ideographic,
        fontWeight: FontWeight.w700,
        fontFamily: 'Nunito',
        color: fontColor,

        fontSize:
            20 * context.textScaleFactorResponsive, // Use responsive font size
      ),
      decoration: InputDecoration(
        suffixIcon: sIcon,
        hintText: title,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.whiteColor,
            width: 1,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.whiteColor,
            width: 1,
          ),
        ),
      ),
    );
  }
}
