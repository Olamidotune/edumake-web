import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/add_management_segments.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/connection_request_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/connection_request_list_tile.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/recent_teachers_note.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/school_mgt_upcoming_events_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.paymentUpdate,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 16.fontSize,
                fontWeight: FontWeight.bold,
                color: AppColors.blackColor,
              ),
        ),
        Center(
          child: Column(
            children: [
              Image.asset(
                'assets/png/empty.png',
                height: 150.height,
                width: 150.width,
              ),
              Text(
                AppStrings.noPaymentUpdate,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12.fontSize,
                      color: AppColors.primaryTextColor,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: TextButton(
            onPressed: () {
              debugPrint('${context.read<AuthBloc>().state.email}');
              Navigator.of(context, rootNavigator: true).pushNamed(
                AddManagementSegmentsScreen.routeName,
              );
            },
            child: Text(
              AppStrings.seeAll,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.primaryColor,
                    fontSize: 16.fontSize,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        Align(
          alignment: Alignment.topLeft,
          child: GestureDetector(
            onTap: () {
              // debugPrint()
            },
            child: Text(
              '${AppStrings.connectionResquest} (10)',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 16.fontSize,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
            ),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            top: AppSpacing.verticalValueSmall,
            left: AppSpacing.horizontalSpacing,
            right: AppSpacing.horizontalSpacing,
          ),
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListView.separated(
            itemCount: 5,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return const ConnectionRequestListTile(
                titleName: 'Kamala Harris',
                subTitleName: 'Donald Trump',
                profilePic: null,
                date: 'Today 4:20',
                className: 'JSS 1',
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                color: AppColors.greyColor,
                thickness: 1,
              );
            },
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        Align(
          alignment: Alignment.bottomRight,
          child: GestureDetector(
            onTap: () => Navigator.of(context, rootNavigator: true)
                .pushNamed(ConnectionRequestScreen.routeName),
            child: Text(
              AppStrings.seeAll,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.primaryColor,
                    fontSize: 16.fontSize,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            AppStrings.upComingEvents,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackColor,
                ),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (BuildContext context, int index) {
            return AppSpacing.verticalSpaceMedium;
          },
          itemBuilder: (BuildContext context, int index) {
            return const SchoolMgtUpcomingEventsContainer(
              previousEvents: false,
              title: 'State Spelling Bee for SS2',
              date: '13 Feb 2023',
              description:
                  'The State Spelling Bee for JSS1 (Junior Secondary School 1) is a competitive academic event designed to enhance vocabulary, spelling skills, and confidence among young students, while fostering a spirit of healthy competition, promoting academic excellence, and encouraging students to develop a lifelong love for language and learning. This prestigious event, often organized by educational bodies or governmental agencies, typically involves a series of elimination rounds starting from school-level competitions, advancing to regional, and culminating in the state finals. ',
              recipients: '${AppStrings.recipients}: ',
              recipientsList: 'Kamala Harris, Donald Trump, Joe Biden',
            );
          },
          itemCount: 3,
        ),
        AppSpacing.verticalSpaceHuge,
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            AppStrings.recentTeachersNote,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.fontSize,
                ),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        const RecentTeachersNote(),
        AppSpacing.verticalSpaceSmall,
        GestureDetector(
          onTap: () {
            Navigator.of(context, rootNavigator: true)
                .pushNamed(RecentTeachersNoteScreen.routeName);
          },
          child: Align(
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
        ),
      ],
    );
  }
}

class RecentTeachersNoteScreen extends StatelessWidget {
  const RecentTeachersNoteScreen({super.key});

  static const String routeName = '/recent-teachers-note';

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: RawScrollbar(
          controller: scrollController,
          thumbColor: AppColors.primaryColor.withOpacity(0.4),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          padding: const EdgeInsets.only(
            right: 10,
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            controller: scrollController,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.horizontalSpacing,
                vertical: AppSpacing.verticalValueMedium,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.teachersNote,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 24.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const RecentTeachersNote();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return AppSpacing.verticalSpaceMedium;
                    },
                    itemCount: 20,
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
