import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/shared/dialogs/logout_dialog.dart';
import 'package:edumake_frontend/src/shared/widgets/menu_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ParentMenuScreen extends StatelessWidget {
  const ParentMenuScreen({super.key});

  static const String routeName = '/parent-menu';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: AppSpacing.horizontalSpacing),
          leading: CircleAvatar(
            radius: 25.fontSize,
            backgroundColor: AppColors.primaryColor.withOpacity(.3),
            child: SvgPicture.asset(
              'assets/svg/parent.svg',
              width: 20.fontSize,
              height: 30.fontSize,
            ),
          ),
          title: Text(
            '${context.read<AuthBloc>().state.user?.fullName}',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.w500,
                  color: AppColors.secondaryTexColor,
                ),
          ), //Name of the user
          subtitle: Text(
            '${context.read<AuthBloc>().state.user?.email}',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 12.fontSize,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
          ), // Email of the user
        ),
        AppSpacing.verticalSpaceMedium,
        const _ParentMenuTopContainer(),
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
            onTap: () {
              _showSignOutDialog(context);
            },
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

class _ParentMenuTopContainer extends StatelessWidget {
  const _ParentMenuTopContainer();

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
            title: AppStrings.notifications,
            icon: 'notification',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

void _showSignOutDialog(BuildContext context) async {
  await showDialog<void>(
    context: context,
    builder: (context) {
      return const LogoutDialog();
    },
  );
}
