import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/user.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/add_teachers.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/connection_requests/connection_request_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/events/events_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/requests/requests_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/classes_events_screen.dart';
import 'package:edumake_frontend/src/shared/dialogs/logout_dialog.dart';
import 'package:edumake_frontend/src/shared/services/auth_services.dart';
import 'package:edumake_frontend/src/shared/widgets/menu_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SchoolMenuScreen extends StatefulWidget {
  const SchoolMenuScreen({super.key});

  static const String routeName = '/school-menu';

  @override
  State<SchoolMenuScreen> createState() => _SchoolMenuScreenState();
}

class _SchoolMenuScreenState extends State<SchoolMenuScreen> {
  User? _user;

  @override
  void initState() {
    super.initState();
    AuthServices().getUser().then((user) => setState(() => _user = user));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: AppSpacing.horizontalSpacing),
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: AppColors.primaryColor.withOpacity(.3),
            child: SvgPicture.asset(
              'assets/svg/admin_icon.svg',
              width: 20.fontSize,
              height: 30.fontSize,
            ),
          ),
          title: Text(
            // _user?.email ?? 'User',
            '${context.read<AuthBloc>().state.user?.fullName ?? _user?.firstName}',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.w500,
                  color: AppColors.secondaryTexColor,
                ),
          ), //Name of the school
          subtitle: Text(
            '${context.read<AuthBloc>().state.user?.email ?? _user?.email}',
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
          MenuListTile(
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
          MenuListTile(
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
          MenuListTile(
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
          MenuListTile(
            title: AppStrings.connectionRequest,
            icon: 'scan',
            onTap: () {
              context
                  .read<RequestsBloc>()
                  .add(const RequestsEvent.getRequest());
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
          MenuListTile(
            title: AppStrings.events,
            icon: 'ticket',
            onTap: () {
              context.read<EventsBloc>().add(
                    const EventsEvent.fetchEvents(
                      null,
                    ),
                  );
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
          MenuListTile(
            title: AppStrings.reports,
            icon: 'danger',
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
