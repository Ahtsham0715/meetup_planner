import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  final String text;
  final String? tapText;
  final VoidCallback? onTap;
  final TextStyle? textStyle;
  final TextStyle? tapTextStyle;

  CustomRichText({
    required this.text,
    this.tapText,
    this.onTap,
    this.textStyle,
    this.tapTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    final List<InlineSpan> children = [
      TextSpan(text: text, style: textStyle),
    ];

    if (tapText != null && onTap != null) {
      children.add(
        TextSpan(
          text: tapText,
          style: tapTextStyle ??
              textStyle?.copyWith(decoration: TextDecoration.underline),
          recognizer: TapGestureRecognizer()..onTap = onTap,
        ),
      );
    }

    return RichText(
      text: TextSpan(children: children),
    );
  }
}
