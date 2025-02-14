import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/extensions/string_extension.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/connection_requests/connection_request_details_screen.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/connection_requests/connection_request_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/events/events_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/requests/requests_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/classes_event_details_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/connection_request_list_tile.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/recent_teachers_note.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/school_mgt_upcoming_events_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';

class SchoolDashBoard extends StatefulWidget {
  const SchoolDashBoard({super.key});

  @override
  State<SchoolDashBoard> createState() => _SchoolDashBoardState();
}

class _SchoolDashBoardState extends State<SchoolDashBoard> {
  @override
  void initState() {
    super.initState();
    context.read<RequestsBloc>().add(const RequestsEvent.getRequest());
    context
        .read<GetSchoolDataBloc>()
        .add(const GetSchoolDataEvent.fetchPaginatedClasses());
    context.read<EventsBloc>().add(
          const EventsEvent.fetchEvents(
            null,
          ),
        );
  }

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
            '${AppStrings.connectionRequest} (${context.read<RequestsBloc>().state.pendingRequests.length})',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackColor,
                ),
          ),
        ),
        BlocBuilder<RequestsBloc, RequestsState>(
          builder: (context, state) {
            if (state.getRequestStatus == FormzSubmissionStatus.inProgress) {
              return const Center(
                child: SpinKitPulsingGrid(
                  color: AppColors.primaryColor,
                  size: 30,
                ),
              );
            }
            if (state.pendingRequests.isEmpty) {
              return const NoDataAvailable(
                height: 0,
                message:
                    'Your connection requests will appear here once they are available. Please check back later or contact support if you believe this is an error.',
              );
            }
            return Column(
              children: [
                AppSpacing.verticalSpaceMedium,
                BlocBuilder<RequestsBloc, RequestsState>(
                  builder: (context, state) {
                    return Container(
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
                        itemCount: state.pendingRequests.length > 3
                            ? 3
                            : state.pendingRequests.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final request = state.getRequestModel!.data[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context, rootNavigator: true)
                                  .pushNamed(
                                ConnectionRequestDetailsScreen.routeName,
                                arguments: {
                                  'requestId': request.id,
                                  'wardClass': request.student.studentClass,
                                  'parent': request.parent.id,
                                  'wardName': request.student.name,
                                  'date': request.updatedAt,
                                },
                              );
                            },
                            child: ConnectionRequestListTile(
                              titleName: "Parent's name",
                              subTitleName: request.student.name,
                              date: request.createdAt.toString(),
                              className: 'Class name',
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider(
                            color: AppColors.greyColor,
                            thickness: 1,
                          );
                        },
                      ),
                    );
                  },
                ),
                AppSpacing.verticalSpaceMedium,
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context, rootNavigator: true)
                        .pushNamed(ConnectionRequestScreen.routeName),
                    child: Text(
                      state.pendingRequests.isEmpty ? '' : AppStrings.seeAll,
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
          },
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
        ///////
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
              itemCount: state.upComingEvent?.length ?? 0,
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
