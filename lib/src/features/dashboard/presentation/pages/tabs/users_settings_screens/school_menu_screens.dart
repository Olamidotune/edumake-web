import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_teachers.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/connection_request_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_classes_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SchoolMenuScreen extends StatelessWidget {
  const SchoolMenuScreen({super.key});

  static const String routeName = '/school-menu';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: AppSpacing.horizontalSpacing),
          leading: const CircleAvatar(
            child: Icon(Icons.person),
          ),
          title: Text(
            'David Egundeyi',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.w500,
                  color: AppColors.secondaryTexColor,
                ),
          ), //Name of the school
          subtitle: Text(
            'Davidegundeyi@yahoo.co.uk',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 12.fontSize,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
          ), // Email of the school
        ),
        AppSpacing.verticalSpaceMedium,
        const SchoolMenuTopContainer(),
        AppSpacing.verticalSpaceMassive,
        Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              _SchoolMenuListTile(
                title: AppStrings.support,
                icon: 'shield_done',
                onTap: () {},
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.horizontalSpacing,
                ),
                child: Divider(
                  color: AppColors.greyColor.withOpacity(0.7),
                  height: 2,
                ),
              ),
              _SchoolMenuListTile(
                title: AppStrings.privacyPolicy,
                icon: 'shield_done',
                onTap: () {},
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.horizontalSpacing,
                ),
                child: Divider(
                  color: AppColors.greyColor.withOpacity(0.7),
                  height: 2,
                ),
              ),
              _SchoolMenuListTile(
                title: AppStrings.termsOfService,
                icon: 'paper',
                onTap: () {},
              ),
            ],
          ),
        ),
        AppSpacing.verticalSpaceMassive,
        Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            onTap: () {},
            leading: SvgPicture.asset(
              'assets/svg/logout.svg',
              color: AppColors.redColor,
              height: 15.fontSize,
            ),
            title: Text(
              AppStrings.logOut,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 14.fontSize,
                    fontWeight: FontWeight.w300,
                    color: AppColors.redColor,
                  ),
            ),
            trailing: SvgPicture.asset('assets/svg/arrow_right.svg'),
          ),
        ),
      ],
    );
  }
}

class SchoolMenuTopContainer extends StatelessWidget {
  const SchoolMenuTopContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          _SchoolMenuListTile(
            title: AppStrings.paymentFees,
            icon: 'payment',
            onTap: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.horizontalSpacing,
            ),
            child: Divider(
              color: AppColors.greyColor.withOpacity(0.7),
              height: 2,
            ),
          ),
          _SchoolMenuListTile(
            title: AppStrings.addStudents,
            icon: 'plus1',
            onTap: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.horizontalSpacing,
            ),
            child: Divider(
              color: AppColors.greyColor.withOpacity(0.7),
              height: 2,
            ),
          ),
          _SchoolMenuListTile(
            title: AppStrings.addTeacher,
            icon: 'plus1',
            onTap: () {
              Navigator.of(context, rootNavigator: true).pushNamed(
                AddTeachersScreen.routeName,
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.horizontalSpacing,
            ),
            child: Divider(
              color: AppColors.greyColor.withOpacity(0.7),
              height: 2,
            ),
          ),
          _SchoolMenuListTile(
            title: AppStrings.connectionResquest,
            icon: 'scan',
            onTap: () {
              Navigator.of(context, rootNavigator: true).pushNamed(
                ConnectionRequestScreen.routeName,
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.horizontalSpacing,
            ),
            child: Divider(
              color: AppColors.greyColor.withOpacity(0.7),
              height: 2,
            ),
          ),
          _SchoolMenuListTile(
            title: AppStrings.messages,
            icon: 'chat',
            onTap: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.horizontalSpacing,
            ),
            child: Divider(
              color: AppColors.greyColor.withOpacity(0.7),
              height: 2,
            ),
          ),
          _SchoolMenuListTile(
            title: AppStrings.notifications,
            icon: 'notification',
            onTap: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.horizontalSpacing,
            ),
            child: Divider(
              color: AppColors.greyColor.withOpacity(0.7),
              height: 2,
            ),
          ),
          _SchoolMenuListTile(
            title: AppStrings.parentsGuardians,
            icon: 'profile',
            onTap: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.horizontalSpacing,
            ),
            child: Divider(
              color: AppColors.greyColor.withOpacity(0.7),
              height: 2,
            ),
          ),
          _SchoolMenuListTile(
            title: AppStrings.teachersNote,
            icon: 'document',
            onTap: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.horizontalSpacing,
            ),
            child: Divider(
              color: AppColors.greyColor.withOpacity(0.7),
              height: 2,
            ),
          ),
          _SchoolMenuListTile(
            title: AppStrings.subscription,
            icon: 'discovery',
            onTap: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.horizontalSpacing,
            ),
            child: Divider(
              color: AppColors.greyColor.withOpacity(0.7),
              height: 2,
            ),
          ),
          _SchoolMenuListTile(
            title: AppStrings.events,
            icon: 'ticket',
            onTap: () {
              Navigator.of(context, rootNavigator: true)
                  .pushNamed(ClassEventsScreen.routeName);
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.horizontalSpacing,
            ),
            child: Divider(
              color: AppColors.greyColor.withOpacity(0.7),
              height: 2,
            ),
          ),
          _SchoolMenuListTile(
            title: AppStrings.reports,
            icon: 'danger',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _SchoolMenuListTile extends StatelessWidget {
  const _SchoolMenuListTile({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final String icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSpacing.verticalSpaceSmall,
        ListTile(
          onTap: onTap,
          leading: SvgPicture.asset(
            'assets/svg/$icon.svg',
            color: AppColors.primaryColor,
            height: 15.fontSize,
          ),
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 14.fontSize,
                  fontWeight: FontWeight.w300,
                  color: AppColors.primaryTextColor,
                ),
          ),
          trailing: SvgPicture.asset('assets/svg/arrow_right.svg'),
        ),
      ],
    );
  }
}
