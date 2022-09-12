import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImages {
  const AppImages._();

  static const String _path = 'assets/images';

  static Widget microphone = SvgPicture.asset('$_path/Voice.svg');

  static Widget heart = SvgPicture.asset('$_path/Storke.svg',);
}
