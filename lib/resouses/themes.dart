import 'package:audiotales/resouses/fonts.dart';
import 'package:flutter/material.dart';

class AppThemes{
  const AppThemes._();

  static ThemeData light(){
    return ThemeData(
      fontFamily: AppFonts.fontFamily,
    );
  }
}