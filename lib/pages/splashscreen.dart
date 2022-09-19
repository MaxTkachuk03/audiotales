import 'dart:async';

import 'package:audiotales/generated/l10n.dart';
import 'package:audiotales/pages/registration_pages/registration_page_start.dart';
import 'package:audiotales/resouses/colors.dart';
import 'package:audiotales/resouses/fonts.dart';
import 'package:audiotales/resouses/icons.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            AutoSizeText(
              S.of(context).splashScreenText,
              maxLines: 1,
              style: const TextStyle(
                color: white,
                fontWeight: AppFonts.bold,
                fontSize: 50.0,
                fontFamily: AppFonts.fontFamily,
                shadows: [
                  Shadow(
                    color: shadowSplashScreen,
                    offset: Offset(0, 4),
                    blurRadius: 11.0,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            SvgPicture.asset(AppIcons.microphone),
          ],
        ),
      ),
    );
  }
}
