import 'package:audiotales/pages/logined_pages/logined_page_start.dart';
import 'package:audiotales/pages/main_page.dart';
import 'package:audiotales/pages/registration_pages/registration_page_code.dart';
import 'package:audiotales/pages/registration_pages/registration_page_end.dart';
import 'package:audiotales/pages/registration_pages/registration_page_numbers.dart';
import 'package:audiotales/pages/registration_pages/registration_page_start.dart';
import 'package:flutter/material.dart';

class AppRouter {
  const AppRouter._();

  static MaterialPageRoute generateRoute(RouteSettings settings) {
    WidgetBuilder builder;
    //final Object? argument = settings.arguments;

    switch (settings.name) {
      case RegistrationPageStart.routeName:
        builder = (_) => const RegistrationPageStart();
        break;
      case RegistrationPageNumbers.routeName:
        builder = (_) => const RegistrationPageNumbers();
        break;
      case RegistrationPageCode.routeName:
        builder = (_) => const RegistrationPageCode();
        break;
      case RegistrationPageEnd.routeName:
        builder = (_) => const RegistrationPageEnd();
        break;
      case LoginedPageStart.routeName:
        builder = (_) => const LoginedPageStart();
        break;
      case MainPage.routeName:
        builder = (_) => const MainPage();
        break;

      default:
        throw Exception('Invalid route: ${settings.name}');
    }
    return MaterialPageRoute(
      builder: builder,
      settings: settings,
    );
  }
}
