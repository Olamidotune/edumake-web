import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/school_mgt_upcoming_events_container.dart';
import 'package:flutter/material.dart';

class TeacherHomeScreen extends StatelessWidget {
  const TeacherHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.assignmentSubmission,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 16.fontSize,
                fontWeight: FontWeight.w500,
                color: AppColors.blackColor,
              ),
        ),
        AppSpacing.verticalSpaceMedium,
        Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Column(
            children: [
              TeacherHomeAssignmentListTile(),
              Divider(),
              TeacherHomeAssignmentListTile(),
              Divider(),
              TeacherHomeAssignmentListTile(),
              Divider(),
              TeacherHomeAssignmentListTile(),
            ],
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            AppStrings.seeAll,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            AppStrings.events,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackColor,
                ),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        const SchoolMgtUpcomingEventsContainer(
          previousEvents: false,
          title: 'State Spelling Bee for SS2',
          date: '13 Feb 2023',
          description:
              'The State Spelling Bee for JSS1 (Junior Secondary School 1) is a competitive academic event designed to enhance vocabulary, spelling skills, and confidence among young students, while fostering a spirit of healthy competition, promoting academic excellence, and encouraging students to develop a lifelong love for language and learning. This prestigious event, often organized by educational bodies or governmental agencies, typically involves a series of elimination rounds starting from school-level competitions, advancing to regional, and culminating in the state finals. ',
          recipients: '${AppStrings.recipients}: ',
          recipientsList: 'Kamala Harris, Donald Trump, Joe Biden',
        ),
        AppSpacing.verticalSpaceMedium,
        const SchoolMgtUpcomingEventsContainer(
          previousEvents: false,
          title: 'State Spelling Bee for SS2',
          date: '13 Feb 2023',
          description:
              'The State Spelling Bee for JSS1 (Junior Secondary School 1) is a competitive academic event designed to enhance vocabulary, spelling skills, and confidence among young students, while fostering a spirit of healthy competition, promoting academic excellence, and encouraging students to develop a lifelong love for language and learning. This prestigious event, often organized by educational bodies or governmental agencies, typically involves a series of elimination rounds starting from school-level competitions, advancing to regional, and culminating in the state finals. ',
          recipients: '${AppStrings.recipients}: ',
          recipientsList: 'Kamala Harris, Donald Trump, Joe Biden',
        ),
        AppSpacing.verticalSpaceMedium,
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            AppStrings.seeAll,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
      ],
    );
  }
}

class TeacherHomeAssignmentListTile extends StatelessWidget {
  const TeacherHomeAssignmentListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppSpacing.horizontalSpacingMedium,
      ),
      leading: CircleAvatar(
        backgroundColor: AppColors.primaryColor.withOpacity(0.1),
        child: Icon(
          Icons.person,
          color: AppColors.primaryColor,
          size: 30.fontSize,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'David Egundeyi',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 14.fontSize,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryColor,
                ),
          ),
          Text(
            'Jss 1 A',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 10.fontSize,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryColor,
                ),
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Assignment on Mathematics',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 10.fontSize,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
          ),
          Text(
            'Due in 2 days',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 10.fontSize,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
          ),
        ],
      ),
    );
  }
}
