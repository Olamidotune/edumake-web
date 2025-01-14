import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:flutter/material.dart';
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
    return role.toString().split('.').last;
  }

  // Convert string back to UserRole enum when retrieving
  static UserRole _stringToRole(String roleString) {
    debugPrint('Retrieved role string: $roleString'); // Log retrieved value
    switch (roleString) {
      case 'parent':
        return UserRole.parent;
      case 'teacher':
        return UserRole.teacher;
      case 'schoolManagement':
        return UserRole.schoolManagement;
      default:
        return UserRole.parent;
    }
  }

  // Save the user role to shared preferences
  static Future<void> saveUserRole(UserRole role) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_roleKey, _roleToString(role));
  }

  // Retrieve the user role from shared preferences
  static Future<UserRole?> getUserRole() async {
    final prefs = await SharedPreferences.getInstance();
    final roleString = prefs.getString(_roleKey);

    if (roleString == null) return null;

    return _stringToRole(roleString);
  }

  // Optional: Clear user role
  static Future<void> clearUserRole() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_roleKey);
  }
}
