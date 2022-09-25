// ignore_for_file: file_names

import 'dart:async';
import 'dart:core';
import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/main_page.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationPageEnd extends StatefulWidget {
  const RegistrationPageEnd({Key? key}) : super(key: key);

  static const routeName = '/audiotales/end';

  @override
  State<RegistrationPageEnd> createState() => _RegistrationPageEndState();
}

class _RegistrationPageEndState extends State<RegistrationPageEnd> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamed(context, MainPage.routeName);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CircularWrapper(
        color: purple,
        child: Column(
          children: [
            SizedBox(
              height: h / 2.71515152,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    S.of(context).superYou,
                    style: const TextStyle(
                      color: white,
                      fontWeight: AppFonts.bold,
                      fontSize: 48.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 78.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        boxShadow: [
                          BoxShadow(
                            color: shadow,
                            offset: Offset(0.0, 4.0),
                            blurRadius: 7.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 21.0, vertical: 25.0),
                        child: AutoSizeText(
                          S.of(context).weGlad,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: const TextStyle(
                            color: black,
                            fontWeight: AppFonts.regular,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 59.0),
                    SvgPicture.asset(AppIcons.heart),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
