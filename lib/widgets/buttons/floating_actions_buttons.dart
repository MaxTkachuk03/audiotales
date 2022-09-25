import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class FloatingABWrapper extends StatelessWidget {
  const FloatingABWrapper({
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 59,
      width: 300,
      child: FloatingActionButton.extended(
        enableFeedback: true,
        backgroundColor: orange,
        onPressed: onTap,
        label: Text(
          S.of(context).buttonText,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: white,
              fontWeight: AppFonts.regular,
              fontSize: 18.0,
              fontFamily: AppFonts.fontFamily),
        ),
      ),
    );
  }
}