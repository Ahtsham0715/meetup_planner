import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double? indent;
  final double? endindent;
  final Color? color;
  const CustomDivider(
      {super.key, this.indent = 16.0, this.endindent = 16.0, this.color});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1.0,
      indent: indent,
      endIndent: endindent,
      color: color ?? Colors.grey.shade300,
      thickness: 1.0,
    );
  }
}

class CustomVerticalDivider extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const CustomVerticalDivider({
    this.width = 1.0,
    this.color = Colors.black,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
    );
  }
}
