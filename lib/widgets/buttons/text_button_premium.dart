import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/audiotales_pages/premium_page.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:flutter/material.dart';

class TextButtonPremium extends StatelessWidget {
  const TextButtonPremium({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.popAndPushNamed(context, PremiumPage.routeName);
        //_navigateToPage(context, PremiumPage.routeName);
      },
      child: Text(
        S.of(context).premium,
        style: const TextStyle(
          color: black,
          fontWeight: AppFonts.regular,
          fontSize: 14.0,
          decoration: TextDecoration.underline,
          decorationThickness: 1.0,
        ),
      ),
    );
  }
}
