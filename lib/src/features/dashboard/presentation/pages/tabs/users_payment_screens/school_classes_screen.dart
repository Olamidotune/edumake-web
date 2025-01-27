import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/school_tab/assignment_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/school_mgt_upcoming_events_container.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_big_text_form_field.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_search_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:edumake_frontend/src/shared/widgets/students_details_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ClassScreen extends StatefulWidget {
  const ClassScreen({super.key});

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.classes,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 24.fontSize,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackColor,
                  ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.greyColor.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/svg/plus1.svg',
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
        Text(
          AppStrings.exploreTheListofClassesYouHaveAddedSoFar,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 12.fontSize,
                fontWeight: FontWeight.w300,
                color: AppColors.blackColor,
              ),
        ),
        AppSpacing.verticalSpaceMedium,
        // Classes
        BlocBuilder<GetSchoolDataBloc, GetSchoolDataState>(
          builder: (context, state) {
            if (state.classesData == null || state.classesData!.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: AppSpacing.verticalValueSpaceLarge * 6),
                    Image.asset(
                      'assets/png/empty.png',
                      height: 150.height,
                    ),
                    Text(
                      'No Data Available',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 20.fontSize,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryTextColor,
                          ),
                    ),
                    AppSpacing.verticalSpaceSmall,
                    Text(
                      'Add a class or classes by clicking the + button above.',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 14.fontSize,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondaryTexColor,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            }
            return ListView.separated(
              itemCount: state.classesData?.length ?? 0,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return AppSpacing.verticalSpaceMedium;
              },
              itemBuilder: (context, index) {
                final classData = state.classesData?[index];
                return GestureDetector(
                  onTap: () {},
                  child: ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    title: classData?.name.toUpperCase() ?? '',
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}

class ClassDetailsScreen extends StatelessWidget {
  const ClassDetailsScreen({super.key});

  static const String routeName = '/class-details';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, String>;
    final className = args['className'];
    final studentCount = args['studentCount'];

    final scrollController = ScrollController();

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: CustomRawScroller(
          scrollController: scrollController,
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            child: SingleChildScrollView(
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    className!,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 24.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor,
                        ),
                  ),

                  AppSpacing.verticalSpaceMedium,
                  // Students
                  ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    title: AppStrings.students,
                    trailing: '${studentCount ?? '0'} students',
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        ClassStudentsScreen.routeName,
                        arguments: {
                          'className': className,
                          'studentCount': studentCount,
                        },
                      );
                    },
                  ),
                  AppSpacing.verticalSpaceMedium,
                  ClassesListTileContainer(
                    onTap: () => Navigator.of(context).pushNamed(
                      AssignmentScreen.routeName,
                    ),
                    title: AppStrings.assignments,
                    isProfilePictureEnabled: false,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    title: AppStrings.testRests,
                    isProfilePictureEnabled: false,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    title: AppStrings.examResults,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    title: AppStrings.events,
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        ClassEventsScreen.routeName,
                        arguments: {
                          'className': className,
                        },
                      );
                    },
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    title: AppStrings.curriculumSchemeOfWork,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    title: AppStrings.payments,
                  ),

                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    title: AppStrings.lectureTimeTable,
                    isProfilePictureEnabled: false,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    title: AppStrings.examManagement,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Navigator.of(context, rootNavigator: true).pushNamed(
//   ClassDetailsScreen.routeName,
//   // arguments: {

//   // },
// );
class ClassStudentsScreen extends StatelessWidget {
  const ClassStudentsScreen({super.key});

  static const String routeName = '/class-students';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final className = args['className'];

    final scrollController = ScrollController();

    final studentName = <String>[
      'John Doe',
      'Donald Trump',
      'Barrack Obama',
      'Joe Biden',
      'Kamala Harris',
      'Nancy Pecos',
      'Hillary Clinton',
      'George Bush',
      'Bill Clinton',
      'Bernie Sanders',
    ];

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: CustomRawScroller(
          scrollController: scrollController,
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$className ${AppStrings.students} ',
                        style: TextStyle(
                          fontSize: 24.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(0.1),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/svg/plus1.svg',
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  AppSpacing.verticalSpaceMedium,
                  // Students
                  ListView.separated(
                    itemBuilder: (context, index) {
                      return ClassesListTileContainer(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            StudentDetailsScreen.routeName,
                            arguments: {
                              'className': className,
                              'studentName': studentName[index],
                            },
                          );
                        },
                        isProfilePictureEnabled: true,
                        title: studentName[index],
                        subTitle: 'International School of Lagos, Akoka',
                      );
                    },
                    separatorBuilder: (context, index) {
                      return AppSpacing.verticalSpaceMedium;
                    },
                    itemCount: studentName.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                  AppSpacing.verticalSpaceMassive,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class StudentDetailsScreen extends StatelessWidget {
  const StudentDetailsScreen({super.key});

  static const String routeName = '/class-assignments';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final studentName = args['studentName'];
    final className = args['className'];

    final scrollController = ScrollController();
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: CustomRawScroller(
          scrollController: scrollController,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.horizontalSpacing,
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                          radius: 50,
                          child: Text(
                            studentName!.toString().substring(0, 1),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 24.fontSize,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.whiteColor,
                                ),
                          ),
                        ),
                        AppSpacing.verticalSpaceSmall,
                        Text(
                          studentName.toString(),
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 16.fontSize,
                                    fontWeight: FontWeight.w900,
                                    color: AppColors.blackColor,
                                  ),
                        ),
                        AppSpacing.verticalSpaceSmall,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/svg/grad_cap.svg',
                              color: AppColors.primaryColor,
                            ),
                            AppSpacing.horizontalSpaceSmall,
                            Text(
                              'International School of Lagos, Akoka',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 12.fontSize,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.blackColor,
                                  ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_border_outlined,
                              color: AppColors.primaryColor,
                              size: 12.fontSize,
                            ),
                            AppSpacing.horizontalSpaceSmall,
                            Text(
                              className.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 12.fontSize,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.blackColor,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  AppSpacing.verticalSpaceHuge,
                  StudentDetailsListTile(
                    leading: AppStrings.assignments,
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        IndividualStudentAssignmentScreen.routeName,
                        arguments: {
                          'studentName': studentName,
                          'className': className,
                        },
                      );
                    },
                  ),
                  AppSpacing.verticalSpaceMedium,
                  StudentDetailsListTile(
                    leading: AppStrings.test,
                    onTap: () {},
                  ),
                  AppSpacing.verticalSpaceMedium,
                  StudentDetailsListTile(
                    leading: AppStrings.exam,
                    onTap: () {},
                  ),
                  AppSpacing.verticalSpaceMedium,
                  StudentDetailsListTile(
                    leading: AppStrings.connectedAccounts,
                    onTap: () {},
                  ),
                  AppSpacing.verticalSpaceMedium,
                  StudentDetailsListTile(
                    leading: AppStrings.teachersNote,
                    onTap: () {},
                  ),
                  AppSpacing.verticalSpaceMedium,
                  StudentDetailsListTile(
                    leading: AppStrings.analysis,
                    onTap: () {},
                  ),
                  AppSpacing.verticalSpaceMedium,
                  StudentDetailsListTile(
                    leading: AppStrings.feesPayment,
                    onTap: () {},
                  ),
                  AppSpacing.verticalSpaceMedium,
                  StudentDetailsListTile(
                    leading: AppStrings.paymentHistory,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class IndividualStudentAssignmentScreen extends StatelessWidget {
  const IndividualStudentAssignmentScreen({super.key});

  static const String routeName = '/individual-student-assignment';

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final studentName = args['studentName'];
    final className = args['className'];

    return Scaffold(
      appBar: CustomAppBar(
        title: studentName.toString(),
        subtitle: 'International School of Lagos, Akoka, ($className)',
      ),
      body: CustomRawScroller(
        scrollController: scrollController,
        child: SingleChildScrollView(
          controller: scrollController,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.subjectCourses,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 24.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                // Assignments
                ListView.separated(
                  itemBuilder: (context, index) {
                    return ClassesListTileContainer(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          AssignmentScreen.routeName,
                          arguments: {
                            'assignmentName': 'Assignment ${index + 1}',
                          },
                        );
                      },
                      isProfilePictureEnabled: false,
                      title: 'Assignment ${index + 1}',
                    );
                  },
                  separatorBuilder: (context, index) {
                    return AppSpacing.verticalSpaceMedium;
                  },
                  itemCount: 26,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ClassEventsScreen extends StatelessWidget {
  const ClassEventsScreen({super.key});

  static const String routeName = '/class-events';

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return Scaffold(
      appBar: const CustomAppBar(),
      body: CustomRawScroller(
        scrollController: scrollController,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          controller: scrollController,
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.events,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 24.fontSize,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor,
                          ),
                    ),
                    AppSpacing.horizontalSpaceSmall,
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          AddEventsScreen.routeName,
                        );
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/plus1.svg',
                            color: AppColors.primaryColor,
                          ),
                          AppSpacing.horizontalSpaceSmall,
                          Text(
                            AppStrings.addEvents,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 14.fontSize,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryColor,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                AppSpacing.verticalSpaceMedium,
                CustomSearchBar(
                  isHomePage: false,
                  hintText: 'Search for events...',
                  onSearch: () {},
                ),
                // Events
                AppSpacing.verticalSpaceMassive,
                Text(
                  AppStrings.upComingEvents,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                ListView.separated(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          ClassEventDetailsScreen.routeName,
                          arguments: {
                            'eventName': 'State Spelling Bee for JSS1',
                          },
                        );
                      },
                      child: const SchoolMgtUpcomingEventsContainer(
                        previousEvents: false,
                        title: 'State Spelling Bee for JSS1',
                        date: '13, Feb 2023',
                        description:
                            'The State Spelling Bee for JSS1 (Junior Secondary School 1) is a competitive academic event designed to enhance vocabulary, spelling skills, and confidence among young students, while fostering a spirit of healthy competition, promoting academic excellence, and encouraging students to develop a lifelong love for language and learning. This prestigious event, often organized by educational bodies or governmental agencies, typically involves a series of elimination rounds starting from school-level competitions, advancing to regional, and culminating in the state finals. ',
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return AppSpacing.verticalSpaceMedium;
                  },
                  itemCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  AppStrings.previousEvents,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                ListView.separated(
                  itemBuilder: (context, index) {
                    return const SchoolMgtUpcomingEventsContainer(
                      previousEvents: true,
                      title: 'State Spelling Bee for JSS1',
                      date: '13, Feb 2023',
                      description:
                          'The State Spelling Bee for JSS1 (Junior Secondary School 1) is a competitive academic event designed to enhance vocabulary, spelling skills, and confidence among young students, while fostering a spirit of healthy competition, promoting academic excellence, and encouraging students to develop a lifelong love for language and learning. This prestigious event, often organized by educational bodies or governmental agencies, typically involves a series of elimination rounds starting from school-level competitions, advancing to regional, and culminating in the state finals. ',
                    );
                  },
                  separatorBuilder: (context, index) {
                    return AppSpacing.verticalSpaceSmall;
                  },
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddEventsScreen extends StatelessWidget {
  const AddEventsScreen({super.key});

  static const String routeName = '/add-events';

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final eventTitleController = TextEditingController();
    final eventTitleFocusNode = FocusNode();
    final eventDateController = TextEditingController();
    final eventDateFocusNode = FocusNode();

    return Scaffold(
      appBar: const CustomAppBar(),
      body: CustomRawScroller(
        scrollController: scrollController,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          controller: scrollController,
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.addEvents,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 24.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                CustomTextFormField(
                  title: AppStrings.eventTitle,
                  controller: eventTitleController,
                  focusNode: eventTitleFocusNode,
                  hintText: AppStrings.eventTitle,
                  keyboardType: TextInputType.text,
                  customFilled: true,
                  editIcon: SvgPicture.asset(
                    'assets/svg/edit.svg',
                    color: AppColors.primaryColor,
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                CustomTextFormField(
                  title: AppStrings.recipients,
                  controller: eventDateController,
                  focusNode: eventDateFocusNode,
                  hintText: AppStrings.recipients,
                  keyboardType: TextInputType.text,
                  customFilled: true,
                  editIcon: SvgPicture.asset(
                    'assets/svg/calendar.svg',
                    color: AppColors.primaryColor,
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                CustomTextFormField(
                  title: AppStrings.eventsDate,
                  controller: eventDateController,
                  focusNode: eventDateFocusNode,
                  hintText: AppStrings.eventsDate,
                  keyboardType: TextInputType.text,
                  customFilled: true,
                  editIcon: SvgPicture.asset(
                    'assets/svg/calendar.svg',
                    color: AppColors.primaryColor,
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                const CustomBigTextFormField(header: AppStrings.eventsDetails),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '${AppStrings.associatedEvent} (${AppStrings.optional})',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 12.fontSize,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceSmall,
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 100.height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/svg/upload.svg',
                            color: AppColors.primaryColor,
                          ),
                          AppSpacing.verticalSpaceMedium,
                          Text(
                            '${AppStrings.upload} ${AppStrings.pngJpg}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 12.fontSize,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primaryTextColor,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                Button(
                  text: AppStrings.review,
                  onPressed: () {},
                ),
                AppSpacing.verticalSpaceMedium,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ClassEventDetailsScreen extends StatelessWidget {
  const ClassEventDetailsScreen({super.key});

  static const String routeName = '/class-event-details';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, String>;
    final eventName = args['eventName'];

    final scrollController = ScrollController();

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: CustomRawScroller(
          scrollController: scrollController,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            controller: scrollController,
            child: Padding(
              padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    height: 250,
                    child: Image.asset(
                      'assets/png/event.png',
                    ),
                  ),
                  Text(
                    eventName!,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 16.fontSize,
                          fontWeight: FontWeight.w700,
                          color: AppColors.blackColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Text(
                    '13, Feb 2023',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 12.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Text(
                    '${AppStrings.recipients}: ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 12.fontSize,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor,
                        ),
                  ),
                  const Divider(),
                  AppSpacing.verticalSpaceMedium,
                  Text(
                    'The State Spelling Bee for JSS1 (Junior Secondary School 1) is a competitive academic event designed to enhance vocabulary, spelling skills, and confidence among young students, while fostering a spirit of healthy competition, promoting academic excellence, and encouraging students to develop a lifelong love for language and learning. This prestigious event, often organized by educational bodies or governmental agencies, typically involves a series of elimination rounds starting from school-level competitions, advancing to regional, and culminating in the state finals. \n The State Spelling Bee for JSS1 (Junior Secondary School 1) is a competitive academic event designed to enhance vocabulary, spelling skills, and confidence among young students, while fostering a spirit of healthy competition, promoting academic excellence, and encouraging students to develop a lifelong love for language and learning. This prestigious event, often organized by educational bodies or governmental agencies, typically involves a series of elimination rounds starting from school-level competitions, advancing to regional, and culminating in the state finals. ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 12.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryTextColor,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Button(
                    text: 'Edit Event',
                    onPressed: () {},
                    buttonColor: Colors.white,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Button(
                    deleteButton: true,
                    text: 'Delete Event',
                    onPressed: () {},
                    buttonColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
