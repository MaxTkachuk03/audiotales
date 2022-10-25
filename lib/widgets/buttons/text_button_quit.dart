import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:flutter/material.dart';

class TextButtonQuit extends StatelessWidget {
  const TextButtonQuit({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        S.of(context).quit,
        style: const TextStyle(
          color: black,
          fontWeight: AppFonts.regular,
          fontSize: 14.0,
        ),
      ),
    );
  }
}
