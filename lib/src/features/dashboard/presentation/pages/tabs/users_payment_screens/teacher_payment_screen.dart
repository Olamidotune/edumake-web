import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_classes_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/school_mgt_upcoming_events_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TeacherPaymentScreen extends StatelessWidget {
  const TeacherPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                Navigator.of(context, rootNavigator: true).pushNamed(
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
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                Navigator.of(context, rootNavigator: true).pushNamed(
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
    );
  }
}
