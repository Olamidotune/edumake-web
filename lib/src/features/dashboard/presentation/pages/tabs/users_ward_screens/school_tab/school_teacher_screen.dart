import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/school_tab/teacher_details_screen.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/widgets/teachers_list_tile_container.dart';
import 'package:flutter/material.dart';

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
                fontSize: 24.fontSize,
                fontWeight: FontWeight.w400,
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
                  arguments: {
                    'teacher': teachers[index],
                    'subject': subjects[index],
                  },
                );
                logInfo('Teacher ${teachers[index]}');
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
      ],
    );
  }
}
