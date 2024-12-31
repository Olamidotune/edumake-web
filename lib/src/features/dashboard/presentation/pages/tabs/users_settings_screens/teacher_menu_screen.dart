import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/menu_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TeacherMenuScreen extends StatelessWidget {
  const TeacherMenuScreen({super.key});

  static const String routeName = '/parent-menu';

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
          ), //Name of the user
          subtitle: Text(
            'Davidegundeyi@yahoo.co.uk',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 12.fontSize,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
          ), // Email of the user
        ),
        AppSpacing.verticalSpaceMedium,
        const _TeacherMenuTopContainer(),
        AppSpacing.verticalSpaceMassive,
        Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              MenuListTile(
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
              MenuListTile(
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
              MenuListTile(
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

class _TeacherMenuTopContainer extends StatelessWidget {
  const _TeacherMenuTopContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          MenuListTile(
            title: AppStrings.curriculumSchemeOfWork,
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
          MenuListTile(
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
          MenuListTile(
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
          MenuListTile(
            title: AppStrings.submittedAssignment,
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
          MenuListTile(
            title: AppStrings.notifications,
            icon: 'notification',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
