import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/user.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/students/student_list.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/students/student_model.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_home_screens/parent_home_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_home_screens/school_home_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_home_screens/teacher_home_screen.dart';
import 'package:edumake_frontend/src/shared/services/auth_services.dart';
import 'package:edumake_frontend/src/shared/services/shared_prefercences.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = 'home_Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  late Future<UserRole> userRoleFuture;
  User? _user;

  @override
  void initState() {
    super.initState();
    userRoleFuture = userRole();
    loadUser();
  }

  List<StudentModel> parseStudents(Map<String, dynamic> data) {
    final studentsData = data['students'] as List<dynamic>;
    return studentsData
        .map(
          (studentMap) =>
              StudentModel.fromMap(studentMap as Map<String, dynamic>),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final students = parseStudents(studentList);
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: CircleAvatar(
                    radius: 20.width,
                    backgroundColor: AppColors.greyColor,
                    child: GestureDetector(
                      onTap: loadUser,
                      child: Text(
                        state.user?.fullName?.substring(0, 1) ?? '',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'HelveticaNeueRounded',
                              fontSize: 12.fontSize,
                              fontWeight: FontWeight.w400,
                              color: AppColors.primaryTextColor,
                            ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: RichText(
                    text: TextSpan(
                      text: ' Hello ',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'HelveticaNeueRounded',
                            fontSize: 16.fontSize,
                            fontWeight: FontWeight.w300,
                            color: AppColors.primaryTextColor,
                          ),
                      children: [
                        TextSpan(
                          text: '${state.user?.fullName}',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 16.fontSize,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primaryColor,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/svg/chat.svg',
                  height: 20.height,
                  width: 50.width,
                ),
              ),
              AppSpacing.horizontalSpaceMedium,
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/svg/notification.svg',
                  height: 25.height,
                  width: 50.width,
                ),
              ),
              AppSpacing.horizontalSpaceMedium,
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(55.h),
              child: CustomSearchBar(
                isHomePage: true,
                hintText: 'Search for students, teachers, classes...',
                onSearch: () {
                  debugPrint('Search');
                },
              ),
            ),
          ),
          body: RawScrollbar(
            controller: _scrollController,
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
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                child: buildDashboard(userRoleFuture, students),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> loadUser() async {
    try {
      final user = await locator<AuthServices>().getUser();
      setState(() {
        _user = user;
        debugPrint('User loaded: ${_user?.classes}'); // Print after user is set
      });
    } catch (e) {
      debugPrint('Error loading user: $e');
    }
  }

  Future<UserRole> userRole() async {
    final role = await UserRoleHelper.getUserRole();
    return role ?? UserRole.parent;
  }

  Widget buildDashboard(
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
            return ParentDashboard(
              students: students,
            );
          } else if (role == UserRole.teacher) {
            return const TeacherHomeScreen();
          } else {
            return const AdminDashboard();
          }
        }
      },
    );
  }
}
