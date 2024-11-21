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
                    classes: AppStrings.students,
                    studentCount: '${studentCount ?? '0'} students',
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).pushNamed(
                        ClassStudentsScreen.routeName,
                      );
                    },
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    classes: AppStrings.assignments,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    classes: AppStrings.testRests,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    classes: AppStrings.examResults,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(classes: AppStrings.events),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    classes: AppStrings.curriculumSchemeOfWork,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    classes: AppStrings.payments,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(classes: AppStrings.events),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    classes: AppStrings.lectureTimeTable,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
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
    return const Scaffold();
  }
}
