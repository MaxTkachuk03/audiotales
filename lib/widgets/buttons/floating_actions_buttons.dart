import 'package:audiotales/pages/registration_pages/registration_page_code.dart';
import 'package:audiotales/pages/registration_pages/registration_page_end.dart';
import 'package:audiotales/pages/registration_pages/registration_page_numbers.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class FloatingABWrapper extends StatelessWidget {
  const FloatingABWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 59,
      width: 300,
      child: FloatingActionButton.extended(
        enableFeedback: true,
        backgroundColor: orange,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const RegistrationPageNumbers())); // what(const RegistrationPageStart())
        },
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

class FloatingABWrapperNumbers extends StatelessWidget {
  const FloatingABWrapperNumbers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 59,
      width: 300,
      child: FloatingActionButton.extended(
        enableFeedback: true,
        backgroundColor: orange,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const RegistrationPageCode()));
        },
        label: Text(
          S.of(context).buttonText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: white,
             fontWeight: AppFonts.regular,
            fontSize: 18.0,
            fontFamily: AppFonts.fontFamily
          ),
        ),
      ),
    );
  }
}

class FloatingABWrapperCode extends StatelessWidget {
  const FloatingABWrapperCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 59,
      width: 300,
      child: FloatingActionButton.extended(
        enableFeedback: true,
        backgroundColor: orange,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const RegistrationPageEnd()));
        },
        label: Text(
          S.of(context).buttonText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: white,
            fontWeight: AppFonts.regular,
            fontSize: 18.0,
            fontFamily: AppFonts.fontFamily
          ),
        ),
      ),
    );
  }
}


