import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/connection_request_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/students/student_list.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/students/student_model.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/announcement_card.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/connection_request_list_tile.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/recent_teachers_note.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/school_mgt_upcoming_events_container.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/teachers_note.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/your_ward_widget.dart';
import 'package:edumake_frontend/src/shared/services/shared_prefercences.dart';
import 'package:flutter/material.dart';
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

  @override
  void initState() {
    super.initState();
    userRoleFuture = userRole();
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
                  onTap: () {},
                  child: Text(
                    'DE',
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
                      text: 'David Egundeyi,',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
                fillColor: AppColors.greyColor.withOpacity(0.1),
                filled: true,
                hintText: "search with school's name or pupil's name",
                hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 10.fontSize,
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w200,
                    ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SvgPicture.asset(
                    'assets/svg/search.svg',
                    color: AppColors.greyColor.withOpacity(1),
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: AppColors.whiteColor,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ),
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
  }

  Future<UserRole> userRole() async {
    final role = await UserRoleHelper.getUserRole();
    return role ?? UserRole.parentStudent;
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
          if (role == UserRole.parentStudent) {
            return ParentDashboard(
              students: students,
            );
          } else if (role == UserRole.teacher) {
            return Container();
          } else {
            return const AdminDashboard();
          }
        }
      },
    );
  }
}

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.paymentUpdate,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 16.fontSize,
                fontWeight: FontWeight.bold,
                color: AppColors.blackColor,
              ),
        ),
        Center(
          child: Column(
            children: [
              Image.asset(
                'assets/png/empty.png',
                height: 150.height,
                width: 150.width,
              ),
              Text(
                AppStrings.noPaymentUpdate,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12.fontSize,
                      color: AppColors.primaryTextColor,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ],
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
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            AppStrings.seeAll,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        AppSpacing.verticalSpaceMassive,
        AppSpacing.verticalSpaceMassive,
      ],
    );
  }
}

class ParentDashboard extends StatelessWidget {
  const ParentDashboard({
    required this.students,
    super.key,
  });

  final List<StudentModel> students;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Ward',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 16.fontSize,
                fontWeight: FontWeight.bold,
                color: AppColors.blackColor,
              ),
        ),
        AppSpacing.verticalSpaceMedium,
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: students.length > 3 ? 3 : students.length,
          itemBuilder: (context, index) {
            final student = students[index];
            return YourWardCard(
              wardName: student.name,
              schoolName: student.school,
              wardClass: student.classLevel,
              profilePic: student.name.substring(1),
              assignmentNum: student.assignment,
              scores: student.deviceToken,
              feesPaid: student.feesPaid,
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return AppSpacing.verticalSpaceMedium;
          },
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            '${students.length - 3} More',
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
            'Upcoming Events',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackColor,
                ),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height < kMinSupportedHeight
                    ? 250.height
                    : 215.height,
                constraints: BoxConstraints(
                  maxWidth: 180.width,
                ),
                padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                decoration: BoxDecoration(
                  color: AppColors.purpleColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.greyColor.withOpacity(0.7),
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: const Offset(1, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Image.asset(
                        'assets/png/girl running.png',
                        height: 110.h,
                        width: double.infinity,
                      ),
                    ),
                    AppSpacing.verticalSpaceMedium,
                    Expanded(
                      flex: 6,
                      child: Text(
                        'Students will have the opportunity to participate in various sports and activities. We encourage everyone to come out and support our young athletes!',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 10.fontSize,
                              color: AppColors.primaryTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 6,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  AnnouncementCard(
                    title: 'Sports Day',
                    description:
                        'School general continuous assessment, to hold for a week starting from Monday, 13th feb 2023.',
                    color: AppColors.redColor.withOpacity(0.3),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  AnnouncementCard(
                    title: 'Cutural Day',
                    description:
                        'This event will showcase the rich diversity of our school through performances, food, and displays representing various cultures...',
                    color: AppColors.greenColor.withOpacity(0.3),
                  ),
                ],
              ),
            ],
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            'View all events',
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
            "Teacher's Note (Recent)",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackColor,
                ),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        const TeachersNote(
          description:
              'I wanted to bring to your attention that Maryann has been consistently falling asleep during class. This is affecting their participation and ability to keep up with the class. Please ensure they get enough rest at home.',
          date: 'Today 4:20',
          teacher: 'Deborah Ani',
          subject: 'Social',
          wardName: 'Samuel Egundeyi',
        ),
      ],
    );
  }
}
