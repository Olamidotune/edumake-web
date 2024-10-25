import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// This class is used to manage the locale of the app
class LocaleService extends ChangeNotifier {
  static const String _localeServiceKey = 'language_code';
  Locale _locale = const Locale('en');
  final SharedPreferences _pref;

  LocaleService(this._pref) {
    _locale = Locale(_pref.getString(_localeServiceKey) ?? 'en');
  }

  Locale get locale => _locale;

  Future<void> setLocale(Locale locale) async {
    if (_locale.languageCode != locale.languageCode) {
      _locale = locale;
      await _pref.setString(_localeServiceKey, locale.languageCode);
      notifyListeners();
    }
  }
}
