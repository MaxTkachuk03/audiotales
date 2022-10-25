

import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:flutter/material.dart';

class FlActButNOWrapper extends StatelessWidget {
  const FlActButNOWrapper({
    required this.onTap,
    super.key,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      width: 84,
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: shadowSplashScreen,
              offset: Offset(0, 4.0),
              blurRadius: 11.0,
            ),
          ],
        ),
        child: FloatingActionButton.extended(
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              color: purple,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
          enableFeedback: true,
          backgroundColor: white,
          onPressed: onTap,
          label: Text(
            S.of(context).no,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: purple,
              fontWeight: AppFonts.regular,
              fontSize: 16.0,
              fontFamily: AppFonts.fontFamily,
            ),
          ),
        ),
      ),
    );
  }
}