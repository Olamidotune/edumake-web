import 'package:cached_network_image/cached_network_image.dart';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/events/events_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/edit_event_screen.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';

class ClassEventDetailsScreen extends StatelessWidget {
  const ClassEventDetailsScreen({super.key});

  static const String routeName = '/class-event-details';

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return Scaffold(
      appBar: const CustomAppBar(),
      body: BlocBuilder<EventsBloc, EventsState>(
        builder: (context, state) {
          if (state.fetchEventByIdStatus == FormzSubmissionStatus.inProgress) {
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
          if (state.fetchEventByIdStatus == FormzSubmissionStatus.failure) {
            return const NoDataAvailable(
              message: 'Something went wrong',
              height: .7,
            );
          }
          return SafeArea(
            child: CustomRawScroller(
              scrollController: scrollController,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                child: Padding(
                  padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (state.eventIdData?.imageUrl == null ||
                          state.eventIdData!.imageUrl.isEmpty)
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          width: double.infinity,
                          height: 250,
                          child: Image.asset(
                            'assets/png/event.png',
                          ),
                        )
                      else
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          width: double.infinity,
                          height: 250,
                          child: CachedNetworkImage(
                            imageUrl: state.eventIdData!.imageUrl,
                            placeholder: (context, url) => const Center(
                              child: SpinKitPulsingGrid(
                                color: AppColors.primaryColor,
                                size: 30,
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                                Image.asset('assets/png/event.png'),
                          ),
                        ),
                      Text(
                        state.eventIdData?.title ?? '',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 16.fontSize,
                              fontWeight: FontWeight.w700,
                              color: AppColors.blackColor,
                            ),
                      ),
                      AppSpacing.verticalSpaceSmall,
                      Text(
                        state.eventIdData?.createdAt ?? '',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 12.fontSize,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackColor,
                            ),
                      ),
                      AppSpacing.verticalSpaceSmall,
                      RichText(
                        text: TextSpan(
                          text: '${AppStrings.recipients}: ',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 12.fontSize,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.blackColor,
                                  ),
                          children: [
                            TextSpan(
                              text:
                                  '${state.eventClass?.map((e) => e.name).join(", ")}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 12.fontSize,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primaryColor,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      AppSpacing.verticalSpaceSmall,
                      const Divider(
                        thickness: 2,
                      ),
                      AppSpacing.verticalSpaceMedium,
                      Text(
                        state.eventIdData?.details ?? '',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 12.fontSize,
                              fontWeight: FontWeight.w400,
                              color: AppColors.primaryTextColor,
                            ),
                        textAlign: TextAlign.justify,
                      ),
                      AppSpacing.verticalSpaceMedium,
                      Button(
                        text: 'Edit Event',
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            EditEventScreen.routeName,
                          );
                        },
                        buttonColor: Colors.white,
                      ),
                      AppSpacing.verticalSpaceMedium,
                      BlocConsumer<EventsBloc, EventsState>(
                        listener: (context, state) {
                          if (state.deleteEventStatus ==
                              FormzSubmissionStatus.success) {
                            ToastService.toast('Event Deleted Successfully');
                            context.read<EventsBloc>().add(
                                  EventsEvent.deleteEvent(
                                    state.eventIdData?.id ?? '',
                                  ),
                                );
                            Future.delayed(const Duration(seconds: 2), () {
                              Navigator.pop(context);
                            });
                          } else if (state.deleteEventStatus ==
                              FormzSubmissionStatus.failure) {
                            ToastService.toast(
                              state.errorMessage ?? 'Something went wrong',
                              ToastType.error,
                            );
                            context.read<EventsBloc>().add(
                                  EventsEvent.deleteEvent(
                                    state.eventIdData?.id ?? '',
                                  ),
                                );
                            Future.delayed(const Duration(seconds: 2), () {
                              Navigator.pop(context);
                            });
                          }
                        },
                        builder: (context, state) {
                          return Button(
                            busy: state.deleteEventStatus ==
                                FormzSubmissionStatus.inProgress,
                            deleteButton: true,
                            text: 'Delete Event',
                            onPressed: () {
                              context.read<EventsBloc>().add(
                                    EventsEvent.deleteEvent(
                                      state.eventIdData?.id ?? '',
                                    ),
                                  );
                            },
                            buttonColor: Colors.white,
                          );
                        },
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
