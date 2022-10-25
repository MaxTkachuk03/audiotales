import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/audiotales_pages/profile_page.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:flutter/material.dart';

class TextButtonSave extends StatelessWidget {
  const TextButtonSave({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.popAndPushNamed(context, Profile.routeName);
      },
      child: Text(
        S.of(context).save,
        style: const TextStyle(
          color: black,
          fontWeight: AppFonts.regular,
          fontFamily: AppFonts.fontFamily,
          fontSize: 14.0,
        ),
      ),
    );
  }
}