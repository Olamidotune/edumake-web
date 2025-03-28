import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/extensions/string_extension.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/events/events_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/classes_event_details_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/classes_events_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/recent_teachers_note.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/school_mgt_upcoming_events_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';

class TeacherHomeScreen extends StatefulWidget {
  const TeacherHomeScreen({super.key});

  @override
  State<TeacherHomeScreen> createState() => _TeacherHomeScreenState();
}

class _TeacherHomeScreenState extends State<TeacherHomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<EventsBloc>().add(
          const EventsEvent.fetchEvents(
            null,
          ),
        );

    context
        .read<GetSchoolDataBloc>()
        .add(const GetSchoolDataEvent.fetchPaginatedClasses());
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = ScreenUtil().screenWidth > kMedDesktopWidth;
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
        ///////EVENTS/////////
        BlocBuilder<EventsBloc, EventsState>(
          builder: (context, state) {
            if (state.fetchEventStatus == FormzSubmissionStatus.inProgress) {
              return const Center(
                child: SpinKitPulsingGrid(
                  color: AppColors.primaryColor,
                  size: 30,
                ),
              );
            }
            if (state.upComingEvent?.isEmpty ?? false) {
              return const NoDataAvailable(
                message: 'No Events Available',
                height: 0,
              );
            }
            return ListView.separated(
              itemCount: (state.upComingEvent?.length ?? 0) > 3
                  ? 3
                  : state.upComingEvent?.length ?? 0,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final event = state.upComingEvent?[index];
                return GestureDetector(
                  onTap: () {
                    context.read<EventsBloc>().add(
                          EventsEvent.fetchEventsById(event?.id ?? ''),
                        );
                    Navigator.of(context, rootNavigator: true).pushNamed(
                      ClassEventDetailsScreen.routeName,
                    );
                  },
                  child: SchoolMgtUpcomingEventsContainer(
                    previousEvents: false,
                    title: event?.title ?? '',
                    date: formatLocalTime(event?.date),
                    description: event?.details ?? '',
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return AppSpacing.verticalSpaceMedium;
              },
              physics: const NeverScrollableScrollPhysics(),
            );
          },
        ),

        GestureDetector(
          onTap: () {
            Navigator.of(context, rootNavigator: true)
                .pushNamed(ClassEventsScreen.routeName);
          },
          child: Align(
            alignment: Alignment.bottomRight,
            child: Text(
              (context.read<EventsBloc>().state.upComingEvent?.isEmpty ?? true)
                  ? ''
                  : AppStrings.seeAll,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.primaryColor,
                    fontSize: isDesktop ? 16 : 16.fontSize,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
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
