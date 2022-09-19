// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `MemoryBox`
  String get splashScreenText {
    return Intl.message(
      'MemoryBox',
      name: 'splashScreenText',
      desc: '',
      args: [],
    );
  }

  /// `Твой голос всегда рядом`
  String get underMemoryBox {
    return Intl.message(
      'Твой голос всегда рядом',
      name: 'underMemoryBox',
      desc: '',
      args: [],
    );
  }

  /// `Привет!`
  String get hello {
    return Intl.message(
      'Привет!',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Мы рады видеть тебя здесь.\n Это приложение поможет записывать сказки и держать их в удобном месте не заполняя память на телефоне`
  String get presentText {
    return Intl.message(
      'Мы рады видеть тебя здесь.\n Это приложение поможет записывать сказки и держать их в удобном месте не заполняя память на телефоне',
      name: 'presentText',
      desc: '',
      args: [],
    );
  }

  /// `Продолжить`
  String get buttonText {
    return Intl.message(
      'Продолжить',
      name: 'buttonText',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация`
  String get registration {
    return Intl.message(
      'Регистрация',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `Введи номер телефона`
  String get telephoneText {
    return Intl.message(
      'Введи номер телефона',
      name: 'telephoneText',
      desc: '',
      args: [],
    );
  }

  /// `Позже`
  String get after {
    return Intl.message(
      'Позже',
      name: 'after',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация привяжет твои сказки к облаку, после чего они всегда будут с тобой`
  String get registrInfo {
    return Intl.message(
      'Регистрация привяжет твои сказки к облаку, после чего они всегда будут с тобой',
      name: 'registrInfo',
      desc: '',
      args: [],
    );
  }

  /// `Введи код из смс, чтобы мы тебя запомнили`
  String get code {
    return Intl.message(
      'Введи код из смс, чтобы мы тебя запомнили',
      name: 'code',
      desc: '',
      args: [],
    );
  }

  /// `Ты супер!`
  String get superYou {
    return Intl.message(
      'Ты супер!',
      name: 'superYou',
      desc: '',
      args: [],
    );
  }

  /// `Главная`
  String get main {
    return Intl.message(
      'Главная',
      name: 'main',
      desc: '',
      args: [],
    );
  }

  /// `Подборки`
  String get selections {
    return Intl.message(
      'Подборки',
      name: 'selections',
      desc: '',
      args: [],
    );
  }

  /// `Запись`
  String get record {
    return Intl.message(
      'Запись',
      name: 'record',
      desc: '',
      args: [],
    );
  }

  /// `Аудиозаписи`
  String get audiorecord {
    return Intl.message(
      'Аудиозаписи',
      name: 'audiorecord',
      desc: '',
      args: [],
    );
  }

  /// `Профиль`
  String get profile {
    return Intl.message(
      'Профиль',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация привяжет твои сказки к облаку, после чего они всегда будут с тобой`
  String get hint {
    return Intl.message(
      'Регистрация привяжет твои сказки к облаку, после чего они всегда будут с тобой',
      name: 'hint',
      desc: '',
      args: [],
    );
  }

  /// `Мы рады тебя видеть`
  String get weGlad {
    return Intl.message(
      'Мы рады тебя видеть',
      name: 'weGlad',
      desc: '',
      args: [],
    );
  }

  /// `Взрослые иногда нуждаются в сказке даже больше, чем дети`
  String get adultText {
    return Intl.message(
      'Взрослые иногда нуждаются в сказке даже больше, чем дети',
      name: 'adultText',
      desc: '',
      args: [],
    );
  }

  /// `Открыть все`
  String get openAll {
    return Intl.message(
      'Открыть все',
      name: 'openAll',
      desc: '',
      args: [],
    );
  }

  /// `Как только ты запишешь аудио, она появится здесь.`
  String get recordedAudio {
    return Intl.message(
      'Как только ты запишешь аудио, она появится здесь.',
      name: 'recordedAudio',
      desc: '',
      args: [],
    );
  }

  /// `Здесь будет твой набор сказок`
  String get set {
    return Intl.message(
      'Здесь будет твой набор сказок',
      name: 'set',
      desc: '',
      args: [],
    );
  }

  /// `Добавить`
  String get add {
    return Intl.message(
      'Добавить',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Тут`
  String get here {
    return Intl.message(
      'Тут',
      name: 'here',
      desc: '',
      args: [],
    );
  }

  /// `И тут`
  String get andHere {
    return Intl.message(
      'И тут',
      name: 'andHere',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
