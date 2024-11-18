import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/students/student_list.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/students/student_model.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_home_screens/parent_home_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/ward_big_card.dart';
import 'package:edumake_frontend/src/shared/services/shared_prefercences.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
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
    final teachers = <String>[
      'Teacher 1',
      'Teacher 2',
      'Teacher 3',
      'Teacher 4',
      'Teacher 5',
      'Teacher 6',
      'Teacher 7',
      'Teacher 8',
      'Teacher 9',
      'Teacher 10',
    ];

    final subjects = <String>[
      'Mathematics',
      'English',
      'Physics',
      'Chemistry',
      'Biology',
      'Agricultural Science',
      'Economics',
      'Government',
      'Civic Education',
      'Computer Science',
    ];
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
        AppSpacing.verticalSpaceMedium,
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context, rootNavigator: true).pushNamed(
                  TeacherDetailsScreen.routeName,
                  arguments: (teachers[index], subjects[index]),
                );
                debugPrint('Teacher ${teachers[index]}');
              },
              child: TeachersListTileContainer(
                teachers: teachers[index],
                subjects: subjects[index],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return AppSpacing.verticalSpaceMedium;
          },
          itemCount: 10,
        ),
        AppSpacing.verticalSpaceMassive,
        AppSpacing.verticalSpaceMassive,
      ],
    );
  }
}

class TeachersListTileContainer extends StatelessWidget {
  const TeachersListTileContainer({
    required this.teachers,
    required this.subjects,
    super.key,
  });

  final String teachers;
  final String subjects;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.primaryColor.withOpacity(0.1),
      ),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: AppColors.whiteColor,
          child: Icon(
            Icons.person,
            color: AppColors.primaryColor,
          ),
        ),
        title: Text(
          teachers,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 15.fontSize,
                fontWeight: FontWeight.w500,
                color: AppColors.primaryColor,
              ),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                subjects,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            AppSpacing.horizontalSpaceSmall,
            Expanded(
              child: Text(
                '[JSS1A,JSS1B,JSS1C,JSS2A,hsfugugdfudgu]',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.goldColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 12.fontSize,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TeacherDetailsScreen extends StatelessWidget {
  const TeacherDetailsScreen({super.key});

  static const String routeName = 'teacher_details_screen';

  @override
  Widget build(BuildContext context) {
    final teacher = ModalRoute.of(context)!.settings.arguments! as String;
    final subject = ModalRoute.of(context)!.settings.arguments! as String;
    return Scaffold(
      appBar: CustomAppBar(
        title: teacher,
        subtitle: subject,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
          // child: TeacherDetails(),
        ),
      ),
    );
  }
}
