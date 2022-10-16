import 'package:flutter/material.dart';
class Customshape extends CustomClipper<Path> { 
  @override 
  Path getClip(Size size) { 
    Path path = Path(); 
 
    path.lineTo(0, size.height - 100); 
    path.quadraticBezierTo( 
        size.width / 2, size.height, size.width, size.height - 50); 
    path.lineTo(size.width, 0); 
    path.close(); 
 
    return path; 
  } 
 
  @override 
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) { 
    return true; 
  } 
} 
 
class BorderPainter extends CustomPainter { 
  @override 
  void paint(Canvas canvas, Size size) { 
    Paint paint = Paint() 
      ..style = PaintingStyle.stroke 
      ..strokeWidth = 10.0 
      ..color = Colors.red; 
    Path path = Path(); 
//    uncomment this and will get the border for all lines 
    path.lineTo(0, size.height - 100); 
    path.quadraticBezierTo( 
        size.width / 2, size.height, size.width, size.height - 50); 
    path.lineTo(size.width, 0); 
    path.close(); 
    canvas.drawPath(path, paint); 
  } 
 
  @override 
  bool shouldRepaint(CustomPainter oldDelegate) => true; 
}


//! ShapeMaker
//!-------------------------------------------------------------------

// class RPSCustomPainter extends CustomPainter {
//   const RPSCustomPainter({
//     required this.color,
//   });

//   final Color color;

//   @override
//   void paint(Canvas canvas, Size size) {
//     Path path_0 = Path();
//     path_0.moveTo(size.width * -0.2062034, size.height * 0.5088753);
//     path_0.cubicTo(
//         size.width * 0.1448551,
//         size.height * 0.9881653,
//         size.width * 1.299906,
//         size.height * 1.127659,
//         size.width * 1.469505,
//         size.height * 0.2949404);
//     path_0.cubicTo(
//         size.width * 1.681505,
//         size.height * -0.7459566,
//         size.width * -0.6644517,
//         size.height * -0.1167591,
//         size.width * -0.2062034,
//         size.height * 0.5088753);
//     path_0.close();

//     Paint paint0Fill = Paint()..style = PaintingStyle.fill;
//     paint0Fill.color = color;
//     canvas.drawPath(path_0, paint0Fill);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

//!-------------------------------------------------------------------

// class MyCustomClipper extends CustomClipper<Path> {

//   @override
//   Path getClip(Size size) {

//     Offset controlPoint = Offset(size.width - 150, size.height );
//     Offset endPoint = Offset(size.width, size.height / 3);

//     Path path = Path()
//       ..lineTo(0, 0)
//       ..lineTo(0, size.height / 3 - 50)
//       ..lineTo(size.width, size.height / 3)
//       ..lineTo(size.width, 0)
//       ..moveTo(0, size.height / 3 - 50)
//       ..quadraticBezierTo(
//           controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
//       ..close();

//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }

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


