// ignore_for_file: file_names

import 'dart:core';
import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/registration_pages/registration_page_code.dart';
import 'package:audiotales/resouses/borders.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/widgets/buttons/floating_actions_button.dart';
import 'package:audiotales/widgets/buttons/text_button_after.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class RegistrationPageNumbers extends StatefulWidget {
  const RegistrationPageNumbers({Key? key}) : super(key: key);

  static const routeName = '/registration_pages/registration_page_numbers';

  @override
  State<RegistrationPageNumbers> createState() => _RegistrationPageStartState();
}

class _RegistrationPageStartState extends State<RegistrationPageNumbers> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          CircularWrapper(
            height: h / 2.4,
          ),
          Column(
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
                        fontSize: 48.0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                //flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Column(
                    children: [
                      AutoSizeText(
                        S.of(context).telephoneText,
                        style: const TextStyle(
                          color: black,
                          fontWeight: AppFonts.regular,
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
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
                        child: TextField(
                          cursorColor: lightBlack,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            fillColor: white,
                            filled: true,
                            focusedBorder: border,
                            enabledBorder: border,
                            border: border,
                          ),
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            // MaskedInputFormatter('+## (###) ### ### #'),
                            PhoneInputFormatter(),
                          ],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: black,
                            fontWeight: AppFonts.regular,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      const Spacer(flex: 3),
                      FloatingABWrapper(
                        onTap: () {
                          Navigator.pushNamed(
                              context, RegistrationPageCode.routeName);
                        },
                        text: S.of(context).buttonText,
                      ),
                      //const Spacer(),
                      const SizedBox(height: 24.0),
                      const TextButtonAfter(),
                      //const Spacer(),
                      const SizedBox(height: 29.0),
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
                              horizontal: 21.0, //),
                              vertical: 25.0),
                          child: AutoSizeText(
                            S.of(context).hint,
                            textAlign: TextAlign.center,
                            maxLines: 3,
                            style: const TextStyle(
                              color: black,
                              fontWeight: AppFonts.regular,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                      const Spacer()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
