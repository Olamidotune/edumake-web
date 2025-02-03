import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/user.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/students/student_list.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/students/student_model.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/parent_ward_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/school_tab/school_teacher_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/teacher_classes_screen.dart';
import 'package:edumake_frontend/src/shared/services/auth_services.dart';
import 'package:flutter/material.dart';

class WardScreen extends StatefulWidget {
  const WardScreen({super.key});

  static const String routeName = 'ward_Screen';

  @override
  State<WardScreen> createState() => _WardScreenState();
}

class _WardScreenState extends State<WardScreen> {
  final ScrollController scrollController = ScrollController();

  User? _user;

  @override
  void initState() {
    super.initState();
    AuthServices().getUser().then((User? user) => setState(() => user = _user));
  }

  @override
  Widget build(BuildContext context) {
    final students = parseStudents(studentList);
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
            child: Padding(
              padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
              child: _buildView(_user, students),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildView(User? user, List<StudentModel> students) {
    final role = user?.role;
    if (role == 'parent') {
      return ParentWardScreen(
        students: students,
      );
    } else if (role == 'teacher') {
      return const TeacherClassesScreen();
    } else {
      return const SchoolTeacherScreen();
    }
  }
}
