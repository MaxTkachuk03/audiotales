// ignore_for_file: file_names

import 'dart:core';
import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/resouses/borders.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/src/wrappers/buttons.dart';
import 'package:audiotales/src/wrappers/circular_wrapper.dart';
import 'package:flutter/material.dart';

class RegistrationPageCode extends StatefulWidget {
  const RegistrationPageCode({Key? key}) : super(key: key);

  @override
  State<RegistrationPageCode> createState() => _RegistrationPageCodeState();
}

class _RegistrationPageCodeState extends State<RegistrationPageCode> {
  @override
  Widget build(BuildContext context) {
    double m = MediaQuery.of(context).size.height;
    double n = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: m,
        width: n,
        child: Column(
          children: [
            CircularWrapper(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(0, m / 8, 0, 0)),
                  Text(
                    S.of(context).registration,
                    style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.w700,
                      fontSize: m / 16,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(n / 6, m / 5, n / 6, 0),
                    child: Text(
                      S.of(context).code,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w400,
                        fontSize: m / 50,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(n / 10, m / 50, n / 10, 0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(41.0)),
                        boxShadow: [
                          BoxShadow(
                            color: shadowForField,
                            offset: Offset(0.0, 4.0),
                            blurRadius: 11.0,
                          ),
                        ],
                      ),
                      child: TextField(
                        //maxLength: 13,
                        maxLines: 1,
                        decoration: const InputDecoration(
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
                          fontWeight: FontWeight.w400,
                          fontSize: m / 34,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, m / 20, 0, 0),
                    child: const FloatingABWrapperCode(),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(n / 20, m / 20, n / 20, 0),
                    child: Container(
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
                        padding:
                            const EdgeInsets.fromLTRB(21.0, 25.0, 21.0, 25.0),
                        child: Text(
                          S.of(context).hint,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}