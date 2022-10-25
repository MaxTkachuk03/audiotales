import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/audiotales_pages/edit_page.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:flutter/material.dart';

class TextButtonEdit extends StatelessWidget {
  const TextButtonEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.popAndPushNamed(context, EditPage.routeName);
      },
      child: Text(
        S.of(context).edit,
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