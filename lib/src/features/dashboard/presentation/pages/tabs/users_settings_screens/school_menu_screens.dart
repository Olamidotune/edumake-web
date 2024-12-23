import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
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
        Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              SchoolMenuListTile(
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
              SchoolMenuListTile(
                title: AppStrings.addStudents,
                icon: 'plus',
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
              SchoolMenuListTile(
                title: AppStrings.addTeacher,
                icon: 'plus',
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
              SchoolMenuListTile(
                title: AppStrings.connectionResquest,
                icon: 'scan',
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
              SchoolMenuListTile(
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
              SchoolMenuListTile(
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
              SchoolMenuListTile(
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
              SchoolMenuListTile(
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
              SchoolMenuListTile(
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
              SchoolMenuListTile(
                title: AppStrings.events,
                icon: 'ticket',
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
              SchoolMenuListTile(
                title: AppStrings.reports,
                icon: 'danger',
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SchoolMenuListTile extends StatelessWidget {
  const SchoolMenuListTile({
    required this.title,
    required this.icon,
    required this.onTap,
    super.key,
  });

  final String title;
  final String icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSpacing.verticalSpaceSmall,
        Row(
          children: [
            Expanded(
              child: ListTile(
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
            ),
          ],
        ),
      ],
    );
  }
}
