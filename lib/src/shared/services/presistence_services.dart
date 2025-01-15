import 'package:edumake_frontend/config/pref_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PresistenceServices {
  factory PresistenceServices() => _manager;

  PresistenceServices._internal();
  static final PresistenceServices _manager = PresistenceServices._internal();

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
}
