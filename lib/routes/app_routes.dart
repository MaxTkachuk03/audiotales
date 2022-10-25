import 'package:audiotales/pages/audiotales_pages/audiorecords_page.dart';
import 'package:audiotales/pages/audiotales_pages/edit_page.dart';
import 'package:audiotales/pages/audiotales_pages/premium_page.dart';
import 'package:audiotales/pages/audiotales_pages/profile_page.dart';
import 'package:audiotales/pages/audiotales_pages/record_page.dart';
import 'package:audiotales/pages/audiotales_pages/selections_page.dart';
import 'package:audiotales/pages/main_page.dart';
import 'package:audiotales/pages/registration_pages/registration_page_code.dart';
import 'package:audiotales/pages/registration_pages/registration_page_end.dart';
import 'package:audiotales/pages/registration_pages/registration_page_numbers.dart';
import 'package:audiotales/pages/registration_pages/registration_page_start.dart';
import 'package:audiotales/pages/screens/logined_page_start.dart';
import 'package:audiotales/pages/screens/main_page_view.dart';
import 'package:audiotales/pages/screens/splashscreen.dart';
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
      case MainView.routeName:
        builder = (_) => const MainView();
        break;
      case MainPage.routeName:
        builder = (_) => const MainPage();
        break;
      case Profile.routeName:
        builder = (_) => const Profile();
        break;
      case Selections.routeName:
        builder = (_) => const Selections();
        break;
      case RecordPage.routeName:
        builder = (_) => const RecordPage();
        break;
      case Audiorecords.routeName:
        builder = (_) => const Audiorecords();
        break;
      case EditPage.routeName:
        builder = (_) => const EditPage();
        break;
      case SplashScreen.routeName:
        builder = (_) => const SplashScreen();
        break;
      case PremiumPage.routeName:
        builder = (_) => const PremiumPage();
        break;
      // case Alert.routeName:
      //   builder = (_) => const Alert();
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
