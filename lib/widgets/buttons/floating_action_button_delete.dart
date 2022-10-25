import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:flutter/material.dart';

class FlActButDeleteWrapper extends StatelessWidget {
  const FlActButDeleteWrapper({
    required this.onTap,
    super.key,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      width: 124,
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
            borderRadius: BorderRadius.all(
              Radius.circular(51.0),
            ),
          ),
          enableFeedback: true,
          backgroundColor: red,
          onPressed: onTap,
          label: Text(
            S.of(context).delete,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: white,
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