// ignore_for_file: file_names

import 'dart:core';
import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/registration_pages/registration_page_end.dart';
import 'package:audiotales/resouses/borders.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/widgets/buttons/floating_actions_buttons.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RegistrationPageCode extends StatefulWidget {
  const RegistrationPageCode({Key? key}) : super(key: key);

  static const routeName = '/audiotales/code';

  @override
  State<RegistrationPageCode> createState() => _RegistrationPageCodeState();
}

class _RegistrationPageCodeState extends State<RegistrationPageCode> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CircularWrapper(
        color: purple,
        height: h / 2.4,
        shadow: const BoxShadow(
          color: shadowCircular,
          offset: Offset(0.0, 4.0),
          blurRadius: 35.0,
        ),
        child: Column(
          children: [
            SizedBox(
              height: h / 2.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    S.of(context).registration,
                    maxLines: 1,
                    style: const TextStyle(
                        color: white,
                        fontWeight: AppFonts.bold,
                        fontSize: 48.0),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Column(
                  children: [
                    AutoSizeText(
                      S.of(context).code,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: black,
                        fontWeight: AppFonts.regular,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      decoration: const BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(41.0)),
                        boxShadow: [
                          BoxShadow(
                            color: shadow,
                            offset: Offset(0.0, 4.0),
                            blurRadius: 11.0,
                          ),
                        ],
                      ),
                      child: const TextField(
                        cursorColor: lightBlack,
                        maxLines: 1,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          fillColor: white,
                          filled: true,
                          focusedBorder: border,
                          enabledBorder: border,
                          border: border,
                        ),
                        keyboardType: TextInputType.phone,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: black,
                            fontWeight: AppFonts.regular,
                            fontSize: 20.0),
                      ),
                    ),
                    //const SizedBox(height: 86.0),
                    const Spacer(
                      flex: 3,
                    ),
                    FloatingABWrapper(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RegistrationPageEnd.routeName);
                      },
                      text: S.of(context).buttonText,
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    //const SizedBox(height: 79.0),
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
                          horizontal: 21.0,
                          vertical: 25.0,
                        ),
                        child: AutoSizeText(
                          S.of(context).hint,
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: const TextStyle(
                              color: black,
                              fontWeight: AppFonts.regular,
                              fontSize: 14.0),
                        ),
                      ),
                    ),
                    const Spacer(flex: 1)
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
