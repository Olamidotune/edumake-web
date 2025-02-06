import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/user.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/parent_menu_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school_menu_screens.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/teacher_menu_screen.dart';
import 'package:edumake_frontend/src/shared/services/auth_services.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  static const String routeName = 'settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final ScrollController scrollController = ScrollController();

  User? _user;

  @override
  void initState() {
    super.initState();
    AuthServices().getUser().then((User? user) => setState(() => user = _user));
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
            child: _buildView(),
          ),
        ),
      ),
    );
  }

  Widget _buildView() {
    final role = context.read<AuthBloc>().state.user?.role;
    if (role == 'parent') {
      return const ParentMenuScreen();
    } else if (role == 'teacher') {
      return const TeacherMenuScreen();
    } else {
      return const SchoolMenuScreen();
    }
  }
}
