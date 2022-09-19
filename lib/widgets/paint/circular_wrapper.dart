import 'package:audiotales/resouses/colors.dart';
import 'package:flutter/material.dart';

import 'clipper.dart';

class CircularWrapper extends StatelessWidget {
  const CircularWrapper({
    required this.child,
    required this.color,
    super.key,
  });

  final Widget child;
  final Color color ;

  @override
  Widget build(BuildContext context) {
    final Size m = MediaQuery.of(context).size;
    final Size h = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: shadowCircular,
                  offset: Offset(0.0, 4.0),
                  blurRadius: 35.0,
                ),
              ]),
          child: CustomPaint(
            size: Size(
                m.width,
                //h.height / 3,
                h.height / 2.71515152),
            painter: RPSCustomPainter(color: color),
          ),
        ),
        child,
      ],
    );

    //(m * 0.8913043478260869).toDouble()),

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
  }
}
