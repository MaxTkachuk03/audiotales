import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

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
