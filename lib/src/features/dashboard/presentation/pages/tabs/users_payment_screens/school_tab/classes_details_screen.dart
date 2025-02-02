import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/school_classes_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/school_tab/assignment_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:flutter/material.dart';

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
