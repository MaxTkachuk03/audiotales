import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/main_page.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:flutter/material.dart';

class TextButtonWapper extends StatelessWidget {
  const TextButtonWapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double m = MediaQuery.of(context).size.height;
    return TextButton(
      onPressed: () {
        Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const MainPage()));
      },
      child: Text(
        S.of(context).after,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: black,
          fontWeight: FontWeight.w400,
          fontSize: m / 30,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}