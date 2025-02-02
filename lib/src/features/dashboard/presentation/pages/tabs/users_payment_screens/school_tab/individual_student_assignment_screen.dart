import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/school_tab/assignment_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:flutter/material.dart';

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
