// ignore_for_file: file_names

import 'dart:async';
import 'dart:core';
import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/main_page.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/svg_picture.dart';
import 'package:audiotales/widgets/paint/circular_wrapper.dart';
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
                    S.of(context).superYou,
                    style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.w700,
                      fontSize: m / 16,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(n/20, m / 4, n/20, 0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        boxShadow: [ BoxShadow(
                          color: shadow,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 7.0,
                        ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(21.0,25.0,21.0,25.0),
                        child: Text(
                          S.of(context).weGlad,
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(n / 20, m / 10, n / 20, 0),
                    child: heart,
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
