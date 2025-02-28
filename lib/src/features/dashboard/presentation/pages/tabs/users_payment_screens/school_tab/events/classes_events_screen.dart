import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/extensions/string_extension.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/events/events_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/add_events_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/classes_event_details_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/school_mgt_upcoming_events_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_search_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

class ClassEventsScreen extends StatelessWidget {
  const ClassEventsScreen({super.key});

  static const String routeName = '/class-events';

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final controller = TextEditingController();

    final refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

    final arguments = ModalRoute.of(context)?.settings.arguments;
    final args = arguments != null ? arguments as Map<dynamic, dynamic> : null;

    String? classId;
    String? wardSchoolId;
    String? source;

    if (args != null) {
      classId = args['classId'] as String?;
      wardSchoolId = args['wardSchoolId'] as String?;
      source = args['source'] as String?;
    } else {}

    final role = context.read<AuthBloc>().state.user?.role;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: BlocBuilder<EventsBloc, EventsState>(
        builder: (context, state) {
          if (state.fetchEventStatus == FormzSubmissionStatus.inProgress) {
            return SizedBox(
              height: 800,
              child: ListView.builder(
                controller: scrollController,
                itemBuilder: (context, index) {
                  return const CustomShimmer();
                },
                itemCount: 10,
              ),
            );
          }
          if (state.upComingEvent?.isEmpty ?? false) {
            return const NoDataAvailable(
              message: 'No Events Available',
              height: 0,
            );
          }
          return CustomRawScroller(
            scrollController: scrollController,
            child: RefreshIndicator(
              backgroundColor: AppColors.secondaryColor,
              color: AppColors.whiteColor,
              key: refreshIndicatorKey,
              onRefresh: () async {
                source == 'school-admin'
                    ? context.read<EventsBloc>().add(
                          const EventsEvent.fetchEvents(
                            null,
                          ),
                        )
                    : context.read<EventsBloc>().add(
                          EventsEvent.fetchEventsByClass(
                              role!.contains('parent')
                                  ? wardSchoolId.toString()
                                  : null,
                              classId.toString()),
                        );
                return;
              },
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                child: Padding(
                  padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStrings.events,
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 24.fontSize,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.blackColor,
                                    ),
                          ),
                          AppSpacing.horizontalSpaceSmall,
                          if (context
                                  .read<AuthBloc>()
                                  .state
                                  .user
                                  ?.role
                                  ?.contains('parent') ??
                              true)
                            const SizedBox.shrink()
                          else
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
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
                        textEditingController: controller,
                        isActive: false,
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
                        itemCount: state.upComingEvent?.length ?? 0,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final event = state.upComingEvent?[index];
                          return GestureDetector(
                            onTap: () {
                              context.read<EventsBloc>().add(
                                    EventsEvent.fetchEventsById(
                                        event?.id ?? ''),
                                  );
                              Navigator.of(context).pushNamed(
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
                      ///////////////////////////////////////////////
                      if (state.previousEvent?.isEmpty ?? false)
                        const NoDataAvailable(
                          message: 'No Events Available',
                          height: 0,
                        )
                      else
                        ListView.separated(
                          itemCount: state.previousEvent?.length ?? 0,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final event = state.previousEvent?[index];
                            return SchoolMgtUpcomingEventsContainer(
                              previousEvents: true,
                              title: event?.title ?? '',
                              date: formatLocalTime(event?.date),
                              description: event?.details ?? '',
                            );
                          },
                          separatorBuilder: (context, index) {
                            return AppSpacing.verticalSpaceMedium;
                          },
                          physics: const NeverScrollableScrollPhysics(),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
