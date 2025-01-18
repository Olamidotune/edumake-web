import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
