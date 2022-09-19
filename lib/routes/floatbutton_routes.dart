import 'package:audiotales/pages/registration_pages/registration_page_code.dart';
import 'package:audiotales/pages/registration_pages/registration_page_start.dart';
import 'package:flutter/material.dart';

class AppRouter {
  const AppRouter._();

  static MaterialPageRoute generateRoute(RouteSettings settings) {
    WidgetBuilder builder;
    //final Object? argument = settings.arguments;

    switch (settings.name) {
      case RegistrationPageStart.routeName:
        builder = (_) => const RegistrationPageCode();
        break;
      // case RegistrationPageCode.routeName:
      // builder = (_) => const RegistrationPageCode();
      //   break;
      // case RegistrationPageCode.routeName:
      // builder = (_) => const RegistrationPageCode();
      //   break;
      default:
        throw Exception('Invalid route: ${settings.name}');
    }
    return MaterialPageRoute(
      builder: builder,
      settings: settings,
    );
  }
}
