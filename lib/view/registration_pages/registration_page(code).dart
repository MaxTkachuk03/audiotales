// ignore_for_file: file_names

import 'dart:core';
import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/src/colors/colors.dart';
import 'package:audiotales/src/images/images.dart';
import 'package:audiotales/src/styles/borders.dart';
import 'package:audiotales/src/wrappers/buttons.dart';
import 'package:audiotales/widgets/clipper.dart';
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
    double n = MediaQuery.of(context).size.width / 20;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  ClipPath(
                    clipper: MyCustomClipper(),
                    child: Container(
                      color: registrationPage,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.fromLTRB(0, m / 8, 0, 0)),
                          Text(
                            S.of(context).registration,
                            style: TextStyle(
                              color: memoryBoxSplashScreen,
                              fontWeight: FontWeight.w700,
                              fontSize: m / 16,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(n*3, m / 2.5, n*3, 0),
                    child: Text(
                      S.of(context).code,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: helloColor,
                        fontWeight: FontWeight.w400,
                        fontSize: m/50,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(n * 2, m / 2.1, n * 2, 0),
                    child: TextField(
                      //inputFormatters: [],
                      maxLength: 13,
                      maxLines: 1,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        fillColor: borderColor,
                        filled: true,
                        focusedBorder: border,
                        enabledBorder: border,
                        border: border,
                      ),
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: helloColor,
                        fontWeight: FontWeight.w400,
                        fontSize: m / 34,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, m / 1.5, 0, 0),
                    child: const FloatingABWrapperCode(),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, m / 1.25, 0, 0),
                    child: wrapp,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
