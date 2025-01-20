import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_search_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/weekly_assignment_container.dart';
import 'package:flutter/material.dart';

class AssignmentScreen extends StatefulWidget {
  const AssignmentScreen({super.key});

  static const routeName = '/assignment-screen';

  @override
  State<AssignmentScreen> createState() => _AssignmentScreenState();
}

class _AssignmentScreenState extends State<AssignmentScreen> {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        //put name of teacher here
        title: 'Assignments',
        //put subject here
        subtitle: 'Subject',
      ),
      body: CustomRawScroller(
        scrollController: scrollController,
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.assignments,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 24.fontSize,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor,
                          ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                    ),
                  ],
                ),
                AppSpacing.verticalSpaceMedium,
                const CustomSearchBar(isHomePage: false),
                AppSpacing.verticalSpaceMedium,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.pendingSubmission,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 16.fontSize,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor,
                        ),
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                const WeeklyAssignmentContainer(
                  title: 'Mathematics',
                  dateAssigned: '12th August',
                  dueDate: '19th August, 2021',
                  isLocked: true,
                ),
                AppSpacing.verticalSpaceMedium,
                const WeeklyAssignmentContainer(
                  title: 'Mathematics',
                  dateAssigned: '12th August',
                  dueDate: '19th August, 2021',
                  isLocked: true,
                ),
                AppSpacing.verticalSpaceMedium,
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    AppStrings.previousSubmission,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 16.fontSize,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor,
                        ),
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                WeeklyAssignmentContainer(
                  title: 'Mathematics',
                  dateAssigned: '12th August',
                  dueDate: '19th August, 2021',
                  isCompleted: true,
                  onTap: () {},
                ),
                AppSpacing.verticalSpaceMedium,
                const WeeklyAssignmentContainer(
                  title: 'Mathematics',
                  dateAssigned: '12th August',
                  dueDate: '19th August, 2021',
                  isCompleted: true,
                ),
                AppSpacing.verticalSpaceMedium,
                const WeeklyAssignmentContainer(
                  title: 'Mathematics',
                  dateAssigned: '12th August',
                  dueDate: '19th August, 2021',
                  isCompleted: true,
                ),
                AppSpacing.verticalSpaceMedium,
                const WeeklyAssignmentContainer(
                  title: 'Mathematics',
                  dateAssigned: '12th August',
                  dueDate: '19th August, 2021',
                  isCompleted: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
