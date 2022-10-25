import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:flutter/material.dart';

class FloatingABWrapper extends StatelessWidget {
  const FloatingABWrapper({
    required this.onTap,
    required this.text,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 59,
      width: 300,
      child: FloatingActionButton.extended(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(51.0),
          ),
        ),
        enableFeedback: true,
        backgroundColor: orange,
        onPressed: onTap,
        label: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: white,
            fontWeight: AppFonts.regular,
            fontSize: 18.0,
            fontFamily: AppFonts.fontFamily,
          ),
        ),
      ),
    );
  }
}
