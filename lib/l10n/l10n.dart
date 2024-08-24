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

class AppLocalization {
  AppLocalization();

  static AppLocalization? _current;

  static AppLocalization get current {
    assert(_current != null,
        'No instance of AppLocalization was loaded. Try to initialize the AppLocalization delegate before accessing AppLocalization.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalization();
      AppLocalization._current = instance;

      return instance;
    });
  }

  static AppLocalization of(BuildContext context) {
    final instance = AppLocalization.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalization present in the widget tree. Did you add AppLocalization.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalization? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  /// `Weather App`
  String get appTitle {
    return Intl.message(
      'Weather App',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `It's the newest weather app. It has a bunch of features and that includes most of the ones that every weather app has`
  String get appDescription {
    return Intl.message(
      'It\'s the newest weather app. It has a bunch of features and that includes most of the ones that every weather app has',
      name: 'appDescription',
      desc: '',
      args: [],
    );
  }

  /// `Weather`
  String get weather {
    return Intl.message(
      'Weather',
      name: 'weather',
      desc: '',
      args: [],
    );
  }

  /// `Forecast App`
  String get forecastApp {
    return Intl.message(
      'Forecast App',
      name: 'forecastApp',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Choose a City`
  String get chooseACity {
    return Intl.message(
      'Choose a City',
      name: 'chooseACity',
      desc: '',
      args: [],
    );
  }

  /// `{temp} ℃`
  String degreeCelcius(String temp) {
    return Intl.message(
      '$temp ℃',
      name: 'degreeCelcius',
      desc: 'weather temperature',
      args: [temp],
    );
  }

  /// `Failed to retrieve weathers`
  String get weathersError {
    return Intl.message(
      'Failed to retrieve weathers',
      name: 'weathersError',
      desc: '',
      args: [],
    );
  }

  /// `Failed to retrieve weather details`
  String get weatherDetailsError {
    return Intl.message(
      'Failed to retrieve weather details',
      name: 'weatherDetailsError',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalization> load(Locale locale) => AppLocalization.load(locale);
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
