import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_screen.dart';
import '../widgets/help_bottom_sheet.dart';

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height  * 0.80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

 @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFB74848)
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);

    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.6,
      size.width * 0.5,
      size.height * 0.5,
    );

    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.4,
      size.width,
      size.height * 0.6,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

   @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}