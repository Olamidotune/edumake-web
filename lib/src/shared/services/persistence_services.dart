// ignore_for_file: avoid_positional_boolean_parameters

import 'package:edumake_frontend/config/pref_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersistenceServices {
  factory PersistenceServices() => _manager;

  PersistenceServices._internal();
  static final PersistenceServices _manager = PersistenceServices._internal();

  SharedPreferences? _prefs;

// 1. Add a private constructor
  Future<void> _ensurePrefsLoaded() async {
    _manager._prefs ??= await SharedPreferences.getInstance();
  }

  Future<bool> getHasAuthenticatedBefore() async {
    await _manager._ensurePrefsLoaded();
    return Future.value(
      _manager._prefs!.getBool(prefHasAuthenticatedBefore) ?? false,
    );
  }

  Future<void> saveHasAuthenticatedBefore(bool hasAuthenticatedBefore) async {
    await _manager._ensurePrefsLoaded();
    await _manager._prefs!
        .setBool(prefHasAuthenticatedBefore, hasAuthenticatedBefore);
  }

  Future<bool> saveLastName(String lastName) async {
    await _manager._ensurePrefsLoaded();
    return _manager._prefs!.setString(prefLastName, lastName);
  }

  Future<String?> getLastName() async {
    await _manager._ensurePrefsLoaded();
    return _manager._prefs!.getString(prefLastName);
  }

  Future<bool> saveFirstName(String firstName) async {
    await _manager._ensurePrefsLoaded();
    return _manager._prefs!.setString(prefFirstName, firstName);
  }

  Future<String?> getFirstName() async {
    await _manager._ensurePrefsLoaded();
    return _manager._prefs!.getString(prefFirstName);
  }

  Future<void> clearAll() async {
    await _manager._ensurePrefsLoaded();
    await _manager._prefs!.clear();
  }
}
