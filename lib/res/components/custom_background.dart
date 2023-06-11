import 'package:flutter/material.dart';

class CustomShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final backgroundRect = Rect.fromLTRB(0, 0, size.width, size.height);

    final backgroundGradient = LinearGradient(
      colors: [
        Color(0xFF3c5fb3),
        Color(0xFF61aff1),
        Color(0xFFe497f6),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.0, 0.5, 1.0],
      tileMode: TileMode.clamp,
    );

    final backgroundPaint = Paint()
      ..shader = backgroundGradient.createShader(backgroundRect);

    canvas.drawRect(backgroundRect, backgroundPaint);

    final patternPaint = Paint()
      ..color = Colors.white.withOpacity(0.2)
      ..style = PaintingStyle.fill;

    final mapPath = Path()
      ..moveTo(size.width * 0.2, size.height * 0.1)
      ..lineTo(size.width * 0.5, size.height * 0.3)
      ..lineTo(size.width * 0.8, size.height * 0.1)
      ..lineTo(size.width * 0.8, size.height * 0.9)
      ..lineTo(size.width * 0.2, size.height * 0.9)
      ..close();

    canvas.drawPath(mapPath, patternPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
