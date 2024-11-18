import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/connection_request_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/students/student_list.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/students/student_model.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_home_screens/parent_home_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_home_screens/school_home_screens.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/connection_request_list_tile.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/recent_teachers_note.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/school_mgt_upcoming_events_container.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/ward_big_card.dart';
import 'package:edumake_frontend/src/shared/services/shared_prefercences.dart';
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
          if (role == UserRole.parentStudent) {
            return ParentDashboard(
              students: students,
            );
          } else if (role == UserRole.teacher) {
            return Container();
          } else {
            return const SchoolTeacherScreen();
          }
        }
      },
    );
  }

  Future<UserRole> userRole() async {
    final role = await UserRoleHelper.getUserRole();
    return role ?? UserRole.parentStudent;
  }
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

class ParentWardScreen extends StatefulWidget {
  const ParentWardScreen({required this.students, super.key});
  final List<StudentModel> students;

  @override
  State<ParentWardScreen> createState() => _ParentWardScreenState();
}

class _ParentWardScreenState extends State<ParentWardScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${AppStrings.yourWards} (3)',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        AppSpacing.verticalSpaceMedium,
        const WardBigCard(
          wardName: 'John Doe',
          wardClass: 'Grade 5',
          wardSchool: 'Springfield Elementary',
          wardNextEvent: 'Parent-Teacher Meeting',
          wardAttendance: '95%',
          wardGender: 'Male',
          feesAmount: '120,000',
          color: AppColors.primaryColor,
        ),
        AppSpacing.verticalSpaceMedium,
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.students.length,
          itemBuilder: (context, index) {
            return WardBigCard(
              wardName: widget.students[index].name,
              wardClass: widget.students[index].classLevel,
              wardSchool: widget.students[index].school,
              wardNextEvent: widget.students[index].upComingEvent,
              wardAttendance: widget.students[index].attendance,
              feesAmount: widget.students[index].feesAmount,
              color: AppColors.purpleColor,
              wardGender: widget.students[index].gender,
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return AppSpacing.verticalSpaceMedium;
          },
        ),
      ],
    );
  }
}
class SchoolTeacherScreen extends StatelessWidget {
  const SchoolTeacherScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.teachers,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 16.fontSize,
                fontWeight: FontWeight.bold,
                color: AppColors.blackColor,
              ),
        ),
        AppSpacing.verticalSpaceSmall,
         Text(
          AppStrings.exploreTheListofTeacherYouHaveAddedSoFar,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 12.fontSize,
                fontWeight: FontWeight.w300,
                color: AppColors.blackColor,
              ),
        ),
       
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            AppStrings.more,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            '${AppStrings.connectionResquest} (10)',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackColor,
                ),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            top: AppSpacing.verticalValueSmall,
            left: AppSpacing.horizontalSpacing,
            right: AppSpacing.horizontalSpacing,
          ),
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListView.separated(
            itemCount: 5,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return const ConnectionRequestListTile(
                titleName: 'Kamala Harris',
                subTitleName: 'Donald Trump',
                profilePic: null,
                date: 'Today 4:20',
                className: 'JSS 1',
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                color: AppColors.greyColor,
                thickness: 1,
              );
            },
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        Align(
          alignment: Alignment.bottomRight,
          child: GestureDetector(
            onTap: () => Navigator.of(context, rootNavigator: true)
                .pushNamed(ConnectionRequestScreen.routeName),
            child: Text(
              AppStrings.seeAll,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            AppStrings.upComingEvents,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackColor,
                ),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (BuildContext context, int index) {
            return AppSpacing.verticalSpaceMedium;
          },
          itemBuilder: (BuildContext context, int index) {
            return const SchoolMgtUpcomingEventsContainer();
          },
          itemCount: 3,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            AppStrings.recentTeachersNote,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.fontSize,
                ),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        const RecentTeachersNote(),
        AppSpacing.verticalSpaceSmall,
        GestureDetector(
          onTap: () {
            Navigator.of(context, rootNavigator: true)
                .pushNamed(RecentTeachersNoteScreen.routeName);
          },
          child: Align(
            alignment: Alignment.bottomRight,
            child: Text(
              AppStrings.seeAll,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
        ),
        AppSpacing.verticalSpaceMassive,
        AppSpacing.verticalSpaceMassive,
      ],
    );
  }
}
