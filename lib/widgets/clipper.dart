import 'package:flutter/widgets.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Offset controlPoint = Offset(size.width - 150, size.height / 2.4);
    Offset endPoint = Offset(size.width, size.height / 3);

    Path path = Path()
      ..lineTo(0, 0)
      ..lineTo(0, size.height / 3 - 50)
      ..lineTo(size.width, size.height / 3)
      ..lineTo(size.width, 0)
      ..moveTo(0, size.height / 3 - 50)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}




/*
Offset controlPoint = Offset(size.width-150, size.height/2.4);
    Offset endPoint = Offset(size.width, size.height/3);

    Path path = Path()
      ..lineTo(0, 0)
      ..lineTo(0, size.height/3-50)
      ..lineTo(size.width, size.height/3)
      ..lineTo(size.width, 0)
      ..moveTo(0, size.height/3-50)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..close();

    return path;
    */ 