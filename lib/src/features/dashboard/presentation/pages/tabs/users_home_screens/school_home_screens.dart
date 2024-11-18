
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/connection_request_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/connection_request_list_tile.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/recent_teachers_note.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/school_mgt_upcoming_events_container.dart';
import 'package:flutter/material.dart';

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
          child: Text(
            AppStrings.more,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            '${AppStrings.connectionResquest} (10)',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackColor,
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
            return const SchoolMgtUpcomingEventsContainer();
          },
          itemCount: 3,
        ),
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
          onTap: () {},
          child: Align(
            alignment: Alignment.bottomRight,
            child: Text(
              AppStrings.seeAll,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
        ),
        AppSpacing.verticalSpaceMassive,
        AppSpacing.verticalSpaceMassive,
      ],
    );
  }
}
