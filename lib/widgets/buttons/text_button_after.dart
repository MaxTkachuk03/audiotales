import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/main_page.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:flutter/material.dart';

void _navigateToPage(BuildContext context, String route) {
  Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil(
    route,
    (_) => false,
  );
}

class TextButtonAfter extends StatelessWidget {
  const TextButtonAfter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Navigator.popAndPushNamed(context, MainPage.routeName);
        _navigateToPage(context, MainPage.routeName);
      },
      child: Text(
        S.of(context).after,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: black,
            fontWeight: AppFonts.regular,
            fontSize: 24.0,
            fontFamily: AppFonts.fontFamily),
      ),
    );
  }
}