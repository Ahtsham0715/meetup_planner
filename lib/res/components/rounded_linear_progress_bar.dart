import 'package:flutter/material.dart';

import '../colors/app_color.dart';

// class RoundedLinearProgressIndicator extends StatelessWidget {
//   final double value;
//   final Color backgroundColor;
//   final Color progressColor;
//   final double height;
//   final double radius;

//   const RoundedLinearProgressIndicator({
//     Key? key,
//     required this.value,
//     this.backgroundColor = const Color(0xffEEEEEE),
//     this.progressColor = AppColor.primaryColor,
//     this.height = 8.0,
//     this.radius = 8.0,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.all(Radius.circular(radius)),
//       child: SizedBox(
//         height: height,
//         child: LinearProgressIndicator(
//           value: value,
//           backgroundColor: backgroundColor,
//           valueColor: AlwaysStoppedAnimation<Color>(progressColor),
//         ),
//       ),
//     );
//   }
// }

class RoundedLinearProgressIndicator extends StatelessWidget {
  final double value;
  final double height;
  final Color backgroundColor;
  final Color valueColor;

  const RoundedLinearProgressIndicator({
    Key? key,
    required this.value,
    this.backgroundColor = Colors.grey,
    this.valueColor = Colors.blue,
    this.height = 10.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _RoundedLinearProgressIndicatorPainter(
        value: value,
        backgroundColor: const Color(0xffEEEEEE),
        valueColor: AppColor.primaryColor,
      ),
      child: Container(
        height: height,
      ),
    );
  }
}

class _RoundedLinearProgressIndicatorPainter extends CustomPainter {
  final double value;
  final Color backgroundColor;
  final Color valueColor;

  _RoundedLinearProgressIndicatorPainter({
    required this.value,
    required this.backgroundColor,
    required this.valueColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint backgroundPaint = Paint()
      ..color = backgroundColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = size.height;

    final Paint valuePaint = Paint()
      ..color = value == 0 ? Colors.transparent : valueColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = size.height;

    final double width = size.width * value;
    canvas.drawLine(
      Offset.zero,
      Offset(size.width, 0),
      backgroundPaint,
    );
    canvas.drawLine(
      Offset.zero,
      Offset(width, 0),
      valuePaint,
    );
  }

  @override
  bool shouldRepaint(_RoundedLinearProgressIndicatorPainter oldDelegate) {
    return oldDelegate.value != value ||
        oldDelegate.backgroundColor != backgroundColor ||
        oldDelegate.valueColor != valueColor;
  }
}
