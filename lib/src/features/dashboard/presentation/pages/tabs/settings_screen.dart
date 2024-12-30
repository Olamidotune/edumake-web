import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/parent_menu_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school_menu_screens.dart';
import 'package:edumake_frontend/src/shared/services/shared_prefercences.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  static const String routeName = 'settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final ScrollController scrollController = ScrollController();
  late Future<UserRole> userRoleFuture;

  @override
  void initState() {
    super.initState();
    userRoleFuture = userRole();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: RawScrollbar(
          controller: scrollController,
          thumbColor: AppColors.primaryColor.withOpacity(0.4),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          padding: const EdgeInsets.only(
            left: 10,
            right: 5,
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            physics: const BouncingScrollPhysics(),
            child: buildSettingsView(
              userRoleFuture,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSettingsView(Future<UserRole> userRoleFuture) {
    return FutureBuilder<UserRole>(
      future: userRoleFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('An error occurred!'),
          );
        } else {
          final userRole = snapshot.data;
          if (userRole == UserRole.schoolManagement) {
            return const SchoolMenuScreen();
          } else if (userRole == UserRole.teacher) {
            return const Center(
              child: Text('Teacher settings'),
            );
          } else {
            return const ParentMenuScreen();
          }
        }
      },
    );
  }
}

Future<UserRole> userRole() async {
  final role = await UserRoleHelper.getUserRole();
  return role ?? UserRole.parentStudent;
}
