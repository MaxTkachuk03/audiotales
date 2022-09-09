import 'dart:async';

import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/registration_pages/registration_page(start).dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/images.dart';
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
          gradient: gradient,
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                S.of(context).splashScreenText,
                style: TextStyle(
                  color: white,
                  fontWeight: FontWeight.w700,
                  fontSize: m / 16,
                  fontStyle: FontStyle.normal,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
              ),
              microphone,
            ],
          ),
        ),
    );
  }
}
