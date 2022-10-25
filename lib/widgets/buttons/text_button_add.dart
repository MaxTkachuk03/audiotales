import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:flutter/material.dart';

class TextButtonAdd extends StatelessWidget {
  const TextButtonAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        S.of(context).add,
        style: const TextStyle(
          color: white,
          fontWeight: AppFonts.regular,
          fontSize: 14.0,
          decoration: TextDecoration.underline,
          decorationThickness: 1.0,
        ),
      ),
    );
  }
}
