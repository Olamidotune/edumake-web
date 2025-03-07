// ignore_for_file: unused_import

import 'package:cached_network_image/cached_network_image.dart';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/events/events_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/parent/get_wards/get_wards_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/classes_event_details_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/classes_events_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/parent_tab/parent_ward_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/ward_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/announcement_card.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/teachers_note.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/your_ward_widget.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';

class ParentDashboard extends StatefulWidget {
  const ParentDashboard({
    super.key,
  });

  @override
  State<ParentDashboard> createState() => _ParentDashboardState();
}

class _ParentDashboardState extends State<ParentDashboard> {
  @override
  void initState() {
    super.initState();
    context.read<GetWardsBloc>().add(const GetWardsEvent.fetchWards());
    context.read<GetWardsBloc>().stream.listen((state) {
      if (state.getWardStatus == FormzSubmissionStatus.success) {
        final wardData = state.getWardRequestModel?.data ?? [];

        if (wardData.isNotEmpty) {
          final parentSchoolId = wardData.first.wardDatumSchool.id;
          final studentIds = wardData.map((ward) => ward.id).toList();

          for (final studentId in studentIds) {
            context
                .read<FeesPaymentBloc>()
                .add(FeesPaymentEvent.fetchFees(parentSchoolId, ''));
          }
        } else {
          logInfo('No wards available, skipping fetchFees.');
        }
      }
    });
  }

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      BlocBuilder<GetWardsBloc, GetWardsState>(
        builder: (context, state) {
          if (state.getWardStatus == FormzSubmissionStatus.inProgress) {
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
          if (state.getWardRequestModel?.data.isEmpty ?? false) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: AppSpacing.verticalValueSpaceLarge * 7),
                Image.asset(
                  'assets/png/empty.png',
                  height: 150,
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  'Search the full name of your ward or the school, crosscheck to be sure it is the correct school then make a result to have access to his academic data.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14, // Assuming 20 is a valid font size
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryTextColor,
                      ),
                  textAlign: TextAlign.center,
                ),
                AppSpacing.verticalSpaceSmall,
              ],
            );
          }
          return Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Your Ward',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor,
                      ),
                ),
              ),
              AppSpacing.verticalSpaceMedium,
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.getWardRequestModel?.data.length ?? 0,
                itemBuilder: (context, index) {
                  final wardDetails = state.getWardRequestModel?.data[index];
                  return YourWardCard(
                    wardName:
                        '${state.getWardRequestModel?.data[index].wardName}',
                    schoolName: wardDetails?.wardDatumSchool.schoolName ?? '',
                    wardClass: wardDetails?.wardDatumClass.name ?? '',
                    assignmentNum: '4',
                    scores: '23',
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return AppSpacing.verticalSpaceMedium;
                },
              ),
              AppSpacing.verticalSpaceSmall,
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed(WardScreen.routeName);
                  },
                  child: Text(
                    'More',
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
                  'Upcoming Events',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor,
                      ),
                ),
              ),
              AppSpacing.verticalSpaceMedium,
              BlocBuilder<EventsBloc, EventsState>(
                builder: (context, state) {
                  if (state.fetchEventStatus ==
                      FormzSubmissionStatus.inProgress) {
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

                  if (state.fetchEventStatus == FormzSubmissionStatus.failure) {
                    return Center(
                      child: Text(
                        'Failed to load events: ${state.errorMessage ?? "Unknown error"}',
                        style: const TextStyle(
                          color: AppColors.errorColor, // Use your error color
                          fontSize: 16,
                        ),
                      ),
                    );
                  }

                  if (state.upComingEvent?.isEmpty ?? false) {
                    return const NoDataAvailable(
                      message: 'No Events Available',
                      height: 0,
                    );
                  }
                  return SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height <
                                  kMinSupportedHeight
                              ? 250.height
                              : 215.height,
                          constraints: BoxConstraints(
                            maxWidth: 180.width,
                          ),
                          padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                          decoration: BoxDecoration(
                            color: AppColors.purpleColor,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.greyColor.withOpacity(0.7),
                                blurRadius: 10,
                                spreadRadius: 1,
                                offset: const Offset(1, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 7,
                                child: state.eventIdData?.imageUrl == null ||
                                        state.eventIdData!.imageUrl.isEmpty
                                    ? Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 20),
                                        width: double.infinity,
                                        height: 250,
                                        child: Image.asset(
                                          'assets/png/event.png',
                                        ),
                                      )
                                    : CachedNetworkImage(
                                        imageUrl: state.eventIdData!.imageUrl,
                                        placeholder: (context, url) =>
                                            const Center(
                                          child: SpinKitPulsingGrid(
                                            color: AppColors.primaryColor,
                                            size: 30,
                                          ),
                                        ),
                                        errorWidget: (context, url, error) =>
                                            Image.asset('assets/png/event.png'),
                                      ),
                              ),
                              AppSpacing.verticalSpaceMedium,
                              Expanded(
                                flex: 6,
                                child: Text(
                                  state.upComingEvent?.first.details ?? '',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontSize: 10.fontSize,
                                        color: AppColors.primaryTextColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 6,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            // First AnnouncementCard with data from upComingEvent[0]
                            if (state.upComingEvent != null &&
                                state.upComingEvent!.isNotEmpty)
                              AnnouncementCard(
                                title: state.upComingEvent![0].title,
                                description: state.upComingEvent![0].details,
                                color: AppColors.redColor.withOpacity(0.3),
                              ),
                            AppSpacing.verticalSpaceMedium,
                            // Second AnnouncementCard with data from upComingEvent[1]
                            if (state.upComingEvent != null &&
                                state.upComingEvent!.length > 1)
                              AnnouncementCard(
                                title: state.upComingEvent![1].title,
                                description: state.upComingEvent![1].details,
                                color: AppColors.greenColor.withOpacity(0.3),
                              ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              AppSpacing.verticalSpaceMedium,
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'View all events',
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
                  "Teacher's Note (Recent)",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor,
                      ),
                ),
              ),
              AppSpacing.verticalSpaceMedium,
              const TeachersNote(
                description:
                    'I wanted to bring to your attention that Maryann has been consistently falling asleep during class. This is affecting their participation and ability to keep up with the class. Please ensure they get enough rest at home.',
                date: 'Today 4:20',
                teacher: 'Deborah Ani',
                subject: 'Social',
                wardName: 'Samuel Egundeyi',
              ),
            ],
          );
        },
      ),
    ]);
  }
}
