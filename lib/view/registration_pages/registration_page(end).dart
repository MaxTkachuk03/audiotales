// ignore_for_file: file_names

import 'dart:async';
import 'dart:core';
import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/src/colors/colors.dart';
import 'package:audiotales/src/images/images.dart';
import 'package:audiotales/view/logined_pages/main_page.dart';
import 'package:audiotales/widgets/clipper.dart';
import 'package:flutter/material.dart';

class RegistrationPageEnd extends StatefulWidget {
  const RegistrationPageEnd({Key? key}) : super(key: key);

  @override
  State<RegistrationPageEnd> createState() => _RegistrationPageEndState();
}

class _RegistrationPageEndState extends State<RegistrationPageEnd> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              //builder: (context) => const LoginedPageStart()));
              builder: (context) => const MainPage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double m = MediaQuery.of(context).size.height;
    //double n = MediaQuery.of(context).size.width / 20;
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
                            S.of(context).superYou,
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
                    padding: EdgeInsets.fromLTRB(0, m / 2.3, 0, 0),
                    child: glade,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, m / 1.5, 0, 0),
                    child: stroke,
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
