import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/students/student_list.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/students/student_model.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/parent_ward_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/school_teacher_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/teacher_classes_screen.dart';
import 'package:edumake_frontend/src/shared/services/shared_preferences.dart';
import 'package:flutter/material.dart';

class WardScreen extends StatefulWidget {
  const WardScreen({super.key});

  static const String routeName = 'ward_Screen';

  @override
  State<WardScreen> createState() => _WardScreenState();
}

class _WardScreenState extends State<WardScreen> {
  late Future<UserRole> userRoleFuture;

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    userRoleFuture = userRole();
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
              child: buildView(userRoleFuture, students),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildView(
    Future<UserRole> userRoleFuture,
    List<StudentModel> students,
  ) {
    return FutureBuilder<UserRole>(
      future: userRoleFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('Error loading user role'));
        } else {
          final role = snapshot.data!;
          if (role == UserRole.parent) {
            return ParentWardScreen(
              students: students,
            );
          } else if (role == UserRole.teacher) {
            return const TeacherClassesScreen();
          } else {
            return const SchoolTeacherScreen();
          }
        }
      },
    );
  }

  Future<UserRole> userRole() async {
    final role = await UserRoleHelper.getUserRole();
    return role ?? UserRole.parent;
  }
}

// List<StudentModel> parseStudents(Map<String, dynamic> data) {
//   final studentsData = data['students'] as List<dynamic>;
//   return studentsData
//       .map(
//         (studentMap) =>
//             StudentModel.fromMap(studentMap as Map<String, dynamic>),
//       )
//       .toList();
// }
