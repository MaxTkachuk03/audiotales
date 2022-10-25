import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/audiotales_pages/record_page.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:flutter/material.dart';

class TextButtonCancel extends StatelessWidget {
  const TextButtonCancel({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.popAndPushNamed(context, RecordPage.routeName);
        //_navigateToPage(context, RecordPage.routeName);
      },
      child: Text(
        S.of(context).back,
        style: const TextStyle(
          color: black,
          fontWeight: AppFonts.regular,
          fontFamily: AppFonts.fontFamily,
          fontSize: 16.0,
        ),
      ),
    );
  }
}