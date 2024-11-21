import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/students_details_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ClassScreen extends StatelessWidget {
  const ClassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final classes = <String>[
      'Jss 1A',
      'Jss 1B',
      'Jss 1C',
      'Jss 2A',
      'Jss 2B',
      'Jss 2C',
      'Jss 3A',
      'Jss 3B',
      'Jss 3C',
      'Sss 1A',
    ];

    final studentCount = <String>[
      '20',
      '39',
      '40',
      '48',
      '23',
      '39',
      '40',
      '48',
      '23',
      '39',
    ];

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
                  'assets/svg/plus.svg',
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
        ListView.separated(
          itemCount: classes.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) {
            return AppSpacing.verticalSpaceMedium;
          },
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context, rootNavigator: true).pushNamed(
                  '/class-details',
                  arguments: {
                    'className': classes[index],
                    'studentCount': studentCount[index],
                  },
                );
              },
              child: ClassesListTileContainer(
                isProfilePictureEnabled: false,
                title: classes[index],
                trailing: studentCount[index],
              ),
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
                  const ClassesListTileContainer(
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
                  const ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    title: AppStrings.events,
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
                    title: AppStrings.events,
                    isProfilePictureEnabled: false,
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
      'Donlad Trump',
      'Barrack Obama',
      'Joe Biden',
      'Kamala Harris',
      'Nancy Pelosi',
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
                          'assets/svg/plus.svg',
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
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
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

class IndvidualStudentAssignmentScreen extends StatelessWidget {
  const IndvidualStudentAssignmentScreen({super.key});

  static const String routeName = '/individual-student-assignment';

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
