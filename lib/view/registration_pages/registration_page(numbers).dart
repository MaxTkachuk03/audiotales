// ignore_for_file: file_names

import 'dart:core';
import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/src/colors/colors.dart';
import 'package:audiotales/src/images/images.dart';
import 'package:audiotales/src/styles/borders.dart';
import 'package:audiotales/src/wrappers/buttons.dart';
import 'package:audiotales/widgets/clipper.dart';
import 'package:flutter/material.dart';

class RegistrationPageNumbers extends StatefulWidget {
  const RegistrationPageNumbers({Key? key}) : super(key: key);

  @override
  State<RegistrationPageNumbers> createState() => _RegistrationPageStartState();
}

class _RegistrationPageStartState extends State<RegistrationPageNumbers> {
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
                    padding: EdgeInsets.fromLTRB(0, m / 2.5, 0, 0),
                    child: Text(
                      S.of(context).telephoneText,
                      style: TextStyle(
                        color: helloColor,
                        fontWeight: FontWeight.w400,
                        fontSize: m/50,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(n * 2, m / 2.25, n * 2, 0),
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
                    padding: EdgeInsets.fromLTRB(0, m / 1.6, 0, 0),
                    child: const FloatingABWrapperNumbers(),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, m / 1.4, 0, 0),
                    child: const TextButtonWapper(),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, m / 1.23, 0, 0),
                    child: wrapp,
                  ),
                  //BoxBorder(),
                  //Rect.fromCenter(center: Offset(size.width - 150, size.height / 2.4), width: 200, height: 100),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
