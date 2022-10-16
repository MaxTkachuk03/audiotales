import 'package:audiotales/resouses/colors.dart';
import 'package:flutter/material.dart';

import 'clipper.dart';

class CircularWrapper extends StatelessWidget {
  const CircularWrapper({ 
    this.color = purple,
    this.height = 250.0,
    this.shadow = const BoxShadow(
      color: shadowCircular,
      offset: Offset(0.0, 4.0),
      blurRadius: 35.0,
    ),
    super.key,
  });

  final Color color;
  final double height;
  final BoxShadow shadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          shadow,
        ],
      ),
      child: ClipPath(
        clipper: Customshape(),
        child: Container(
          color: color,
          width: double.infinity,
          height: height,
        ),
      ),
    );
  }
}

//! ShapeMaker
//!-------------------------------------------------------------------

// class CircularWrapper extends StatelessWidget {
//   const CircularWrapper({
//     required this.child,
//     this.color = purple,
//     required this.height,
//     this.shadow = const BoxShadow(
//       color: shadowCircular,
//       offset: Offset(0.0, 4.0),
//       blurRadius: 35.0,
//     ),
//     super.key,
//   });

//   final Widget child;
//   final Color color;
//   final double height;
//   final BoxShadow shadow;

//   @override
//   Widget build(BuildContext context) {
//     final Size m = MediaQuery.of(context).size;
//     return Stack(
//       alignment: AlignmentDirectional.topCenter,
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             boxShadow: [
//               shadow,
//             ],
//           ),
//           child: CustomPaint(
//             size: Size(
//               m.width,
//               height,
//               //h.height / 3,
//               // h.height / 2.71515152
//             ),
//             painter: RPSCustomPainter(color: color),
//           ),
//         ),
//         child,
//       ],
//     );
//   }
// }

//!-------------------------------------------------------------------



// (m * 0.8913043478260869).toDouble()),

    // return Stack(
    //   //alignment: AlignmentDirectional.topCenter,
    //   children: [
    //     ClipPath(
    //       clipper: MyCustomClipper(),
    //       child: Container(
    //         height: MediaQuery.of(context).size.height/2,
    //         width: MediaQuery.of(context).size.width,
    //         decoration: const BoxDecoration(
    //           color: purple,
    //           boxShadow: [
    //             BoxShadow(
    //               color: shadowCircular,
    //               offset: Offset(0.0, 4.0),
    //               blurRadius: 35.0,
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //     child,
    //   ],
    // );