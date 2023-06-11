import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:meetup_planner/res/colors/app_color.dart';
import 'package:meetup_planner/res/extensions/size_extension.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(context),
          )
        : _buildSwitchWidget(context);
  }

  _buildSwitchWidget(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: context.blockSizeVertical * 5,
        width: context.blockSizeHorizontal * 10,
        toggleSize: 24,
        // borderRadius: getHorizontalSize(
        //   12.00,
        // ),
        activeColor: AppColor.primaryColor,
        activeToggleColor: AppColor.whiteColor,
        inactiveColor: AppColor.greyColor,
        inactiveToggleColor: AppColor.whiteColor,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
