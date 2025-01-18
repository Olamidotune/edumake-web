import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
  static Future<void> saveUserLoggedInSharedPreference(
    // ignore: avoid_positional_boolean_parameters
    bool isUserLoggedIn,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ISLOGGEDIN', isUserLoggedIn);
  }

  static Future<bool> getUserLoggedInSharedPreference() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('ISLOGGEDIN') ?? false;
  }

  static Future<void> saveUserEmailSharedPreference(
    String userEmail,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('USEREMAIL', userEmail);
  }

  static Future<String> getUserEmailSharedPreference() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('USEREMAIL') ?? '';
  }

  static Future<void> saveUserRoleSharedPreference(
    String userRole,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('USERROLE', userRole);
  }

  static Future<String> getUserRoleSharedPreference() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('USERROLE') ?? '';
  }
}

class UserRoleHelper {
  static const String _roleKey = 'user_role';

  static String _roleToString(UserRole role) {
    switch (role) {
      case UserRole.parent:
        return 'parent';
      case UserRole.teacher:
        return 'teacher';
      case UserRole.schoolAdmin:
        return 'school-admin';
    }
  }

  static UserRole _stringToRole(String roleString) {
    switch (roleString) {
      case 'parent':
        return UserRole.parent;
      case 'teacher':
        return UserRole.teacher;
      case 'school-admin':
        return UserRole.schoolAdmin;
      default:
        logInfo(
          'Warning: Unknown role string: $roleString',
        );
        return UserRole.parent;
    }
  }

  static String getRoleStringForAPI(UserRole role) {
    return _roleToString(
      role,
    );
  }

  // Save the user role to shared preferences
  static Future<void> saveUserRole(UserRole role) async {
    final prefs = await SharedPreferences.getInstance();
    final roleString = _roleToString(role);
    logInfo('Saving role: $roleString');
    await prefs.setString(_roleKey, roleString);
  }

  // Retrieve the user role from shared preferences
  static Future<UserRole?> getUserRole() async {
    final prefs = await SharedPreferences.getInstance();
    final roleString = prefs.getString(_roleKey);
    logInfo('Retrieved role string: $roleString');

    if (roleString == null) return null;

    return _stringToRole(roleString);
  }
}
