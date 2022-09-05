import 'dart:async';

import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/src/colors/colors.dart';
import 'package:audiotales/src/images/images.dart';
import 'package:audiotales/view/logined_pages/logined_page(start).dart';
import 'package:audiotales/view/registration_pages/registration_page(start).dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              //builder: (context) => const LoginedPageStart()));
              builder: (context) => const RegistrationPageStart()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double m = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: backgroundSplashScreen,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                S.of(context).splashScreenText,
                style: TextStyle(
                  color: memoryBoxSplashScreen,
                  fontWeight: FontWeight.w700,
                  fontSize: m / 16,
                  fontStyle: FontStyle.normal,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  rectangle,
                  microphone,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
