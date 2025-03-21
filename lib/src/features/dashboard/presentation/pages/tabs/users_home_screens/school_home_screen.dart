import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/extensions/string_extension.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/connection_requests/connection_request_details_screen.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/connection_requests/connection_request_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/events/events_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/requests/requests_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/classes_event_details_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/classes_events_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school/fees_payment/fees_payment_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/connection_request_list_tile.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/recent_teachers_note.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/school_mgt_upcoming_events_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:edumake_frontend/src/shared/widgets/payments_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    context
        .read<FeesPaymentBloc>()
        .add(const FeesPaymentEvent.fetchPayments(''));
    context
        .read<FeesPaymentBloc>()
        .add(const FeesPaymentEvent.fetchFees(null, ''));
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = ScreenUtil().screenWidth > kMedDesktopWidth;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (kIsWeb)
          Container(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacingSmall),
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              spacing: AppSpacing.horizontalSpacingMedium,
              children: [
                Expanded(
                  child: _AddSchoolDataContainer(
                    title: 'Add Classes',
                    description:
                        'Add a class or set of classes, add students to it and assign teachers/subjects.',
                    buttonText: 'Add Classes',
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: _AddSchoolDataContainer(
                    title: 'Add Student',
                    description:
                        'Add student, input their classes, subjects and teachers in charge of the student.',
                    buttonText: 'Add Student',
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: _AddSchoolDataContainer(
                    title: 'Add Teacher',
                    description:
                        'Add a teacher and assign him/her to a subject and set of classes they will manage.',
                    buttonText: 'Add Teacher',
                    onTap: () {},
                  ),
                ),
              ],
            ),
          )
        else
          const SizedBox.shrink(),
        AppSpacing.verticalSpaceMedium,

        //////
        Container(
          padding: EdgeInsets.all(
            AppSpacing.horizontalSpacing,
          ),
          decoration: BoxDecoration(
            color: isDesktop
                ? AppColors.primaryColor.withValues(alpha: 0.1)
                : null,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isDesktop ? AppStrings.payments : AppStrings.paymentUpdate,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: isDesktop ? 24 : 16.fontSize,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blackColor,
                    ),
              ),
              AppSpacing.verticalSpaceSmall,
              if (isDesktop)
                const Text(
                    'Manage the fees and payment history of the students.')
              else
                const SizedBox.shrink(),
              if (isDesktop)
                AppSpacing.verticalSpaceSmall
              else
                const SizedBox.shrink(),
              BlocBuilder<FeesPaymentBloc, FeesPaymentState>(
                builder: (context, state) {
                  if (state.fetchPaymentStatus ==
                      FormzSubmissionStatus.inProgress) {
                    return const Center(
                      child: SpinKitPulsingGrid(
                        color: AppColors.primaryColor,
                        size: 30,
                      ),
                    );
                  }
                  if (state.fetchPaymentStatus ==
                      FormzSubmissionStatus.failure) {
                    return const Center(
                      child: NoDataAvailable(
                          message: 'Something went wrong', height: 3),
                    );
                  }

                  if (state.fetchPaymentsDatum?.isEmpty ?? true) {
                    return const Center(
                      child: NoDataAvailable(
                        message: 'No payments presently.',
                        height: 3,
                      ),
                    );
                  }
                  return ListView.separated(
                    shrinkWrap: true,
                    controller: ScrollController(),
                    itemCount: (state.fetchPaymentsDatum?.length ?? 0) > 3
                        ? 3
                        : state.fetchPaymentsDatum?.length ?? 0,
                    itemBuilder: (context, index) {
                      final payments = state.fetchPaymentsDatum![index];
                      return PaymentContainer(
                        onTap: () {},
                        title: payments.fee.title,
                        amount: payments.amount,
                        paidBy: payments.paidBy.fullName ?? '',
                        paidFor: payments.paidFor.name,
                        date: formatLocalTime(payments.updatedAt.toString()),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return AppSpacing.verticalSpaceMedium;
                    },
                  );
                },
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context, rootNavigator: true)
                      .pushNamed(FeePaymentScreen.routeName);
                },
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    (context
                                .read<FeesPaymentBloc>()
                                .state
                                .fetchPaymentsDatum
                                ?.isEmpty ??
                            true)
                        ? ''
                        : isDesktop
                            ? AppStrings.viewAll
                            : AppStrings.seeAll,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.primaryColor,
                          fontSize: isDesktop ? 16 : 16.fontSize,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),

        AppSpacing.verticalSpaceMedium,
        Align(
          alignment: Alignment.topLeft,
          child: BlocBuilder<RequestsBloc, RequestsState>(
            builder: (context, state) {
              return Text(
                '${AppStrings.connectionRequest} (${context.read<RequestsBloc>().state.pendingRequests.length})',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: isDesktop ? 24 : 16.fontSize,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blackColor,
                    ),
              );
            },
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
                          final request = state.pendingRequests[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context, rootNavigator: true)
                                  .pushNamed(
                                ConnectionRequestDetailsScreen.routeName,
                                arguments: {
                                  'requestId': request.id,
                                  'wardClass':
                                      request.student.studentClass.className,
                                  'parent': request.parent.id.fullName,
                                  'wardName': request.student.name,
                                  'date': request.updatedAt,
                                  'parentNIN': request.parent.id.parentIdNumber,
                                  'parentPhoneNumber':
                                      request.parent.id.parentPhoneNumber,
                                  'relationship': request.parent.relationship,
                                },
                              );
                            },
                            child: ConnectionRequestListTile(
                              titleName: request.parent.id.fullName.toString(),
                              subTitleName: request.student.name,
                              date: request.createdAt.toString(),
                              className: request.student.studentClass.className,
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
                  fontSize: isDesktop ? 24 : 16.fontSize,
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
        AppSpacing.verticalSpaceHuge,
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            AppStrings.recentTeachersNote,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: isDesktop ? 24 : 16.fontSize,
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
                    fontSize: isDesktop ? 16 : 16.fontSize,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}

class _AddSchoolDataContainer extends StatelessWidget {
  const _AddSchoolDataContainer({
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onTap,
  });

  final String title;
  final String description;
  final String buttonText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: 171, // Add width
        height: 250, // Add height
        decoration: BoxDecoration(
          color: AppColors.whiteColor.withValues(alpha: .9),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
            ),
            AppSpacing.verticalSpaceSmall,
            Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 14,
                    color: AppColors.blackColor,
                  ),
              textAlign: TextAlign.center,
            ),
            AppSpacing.verticalSpaceLarge,
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Row(
                  children: [
                    Text(
                      buttonText,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor,
                          ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primaryColor,
                      size: 16,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
