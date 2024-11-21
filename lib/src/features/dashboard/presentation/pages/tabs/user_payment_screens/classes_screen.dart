import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
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
                classes: classes[index],
                studentCount: studentCount[index],
              ),
            );
          },
        ),
        AppSpacing.verticalSpaceMassive,
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
                    classes: AppStrings.students,
                    studentCount: '${studentCount ?? '0'} students',
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
                    classes: AppStrings.assignments,
                    isProfilePictureEnabled: false,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    classes: AppStrings.testRests,
                    isProfilePictureEnabled: false,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    classes: AppStrings.examResults,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    classes: AppStrings.events,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    classes: AppStrings.curriculumSchemeOfWork,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    classes: AppStrings.payments,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    classes: AppStrings.events,
                    isProfilePictureEnabled: false,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    classes: AppStrings.lectureTimeTable,
                    isProfilePictureEnabled: false,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    classes: AppStrings.examManagement,
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
                          debugPrint(className.toString());
                          Navigator.of(context).pushNamed(
                            StudentDetailsScreen.routeName,
                            arguments: {
                              'className': className[index],
                            },
                          );
                        },
                        isProfilePictureEnabled: true,
                        classes: 'Student ${index + 1}',
                        subTitle: 'International School of Lagos, Akoka',
                      );
                    },
                    separatorBuilder: (context, index) {
                      return AppSpacing.verticalSpaceMedium;
                    },
                    itemCount: 20,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$className ${AppStrings.assignments} ',
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
                  // Assignments
                  ListView.separated(
                    itemBuilder: (context, index) {
                      return ClassesListTileContainer(
                        isProfilePictureEnabled: false,
                        classes: 'Assignment ${index + 1}',
                        subTitle: 'Due in 2 days',
                      );
                    },
                    separatorBuilder: (context, index) {
                      return AppSpacing.verticalSpaceMedium;
                    },
                    itemCount: 20,
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
