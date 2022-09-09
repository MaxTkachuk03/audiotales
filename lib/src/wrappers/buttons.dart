import 'package:audiotales/pages/main_page.dart';
import 'package:audiotales/pages/registration_pages/registration_page(code).dart';
import 'package:audiotales/pages/registration_pages/registration_page(end).dart';
import 'package:audiotales/pages/registration_pages/registration_page(numbers).dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class FloatingABWrapper extends StatelessWidget {
  const FloatingABWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double m = MediaQuery.of(context).size.height;
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
                  builder: (context) => const RegistrationPageNumbers()));
        },
        label: Text(
          S.of(context).buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: white,
            fontWeight: FontWeight.w400,
            fontSize: m/46,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}

class FloatingABWrapperNumbers extends StatelessWidget {
  const FloatingABWrapperNumbers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double m = MediaQuery.of(context).size.height;
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
          style: TextStyle(
            color: white,
            fontWeight: FontWeight.w400,
            fontSize: m/46,
            fontStyle: FontStyle.normal,
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
    double m = MediaQuery.of(context).size.height;
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
          style: TextStyle(
            color: white,
            fontWeight: FontWeight.w400,
            fontSize: m/46,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}

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
