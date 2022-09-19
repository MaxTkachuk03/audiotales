
import 'package:audiotales/pages/logined_pages/logined_page_start.dart';
import 'package:audiotales/pages/splashscreen.dart';
import 'package:audiotales/resouses/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    _initSettings();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: AppThemes.light(),
       home: const SplashScreen(), 
    //  const LoginedPageStart(),
    );
  }
}

void _initSettings(){
   PhoneInputFormatter.replacePhoneMask(
      countryCode: 'UA',
      newMask: '+000 (00) 000 00 00',
    );
}