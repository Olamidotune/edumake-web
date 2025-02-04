import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/class_students_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/classes_events_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/school_tab/assignment_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:flutter/material.dart';

class ClassDetailsScreen extends StatefulWidget {
  const ClassDetailsScreen({super.key});

  static const String routeName = '/class-details';

  @override
  State<ClassDetailsScreen> createState() => _ClassDetailsScreenState();
}

class _ClassDetailsScreenState extends State<ClassDetailsScreen> {
  String? _classNameKey;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_getClassNameKey);
  }

  void _getClassNameKey(_) {
    setState(() {
      _classNameKey = ModalRoute.of(context)!.settings.arguments as String?;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                    _classNameKey ?? '',
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
                    trailing: '${_classNameKey ?? '0'} students',
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        ClassStudentsScreen.routeName,
                        arguments: {
                          'className': _classNameKey,
                          'studentCount': _classNameKey,
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
                          'className': _classNameKey,
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
