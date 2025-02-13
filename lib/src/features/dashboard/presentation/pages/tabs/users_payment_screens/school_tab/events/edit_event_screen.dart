// ignore_for_file: library_private_types_in_public_api

import 'package:cached_network_image/cached_network_image.dart';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/events/events_bloc.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';

class EditEventScreen extends StatefulWidget {
  const EditEventScreen({super.key});

  static const String routeName = 'edit_event_screen';

  @override
  _EditEventScreenState createState() => _EditEventScreenState();
}

class _EditEventScreenState extends State<EditEventScreen> {
  TextEditingController _detailsController = TextEditingController();
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    final eventDetails =
        context.read<EventsBloc>().state.eventIdData?.details ?? '';
    _detailsController = TextEditingController(text: eventDetails);
  }

  @override
  void dispose() {
    _detailsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Event'),
      ),
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
                      Column(
                        children: [
                          TextField(
                            cursorColor: AppColors.primaryColor,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: AppColors.primaryTextColor,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.fontSize,
                                    ),
                            controller: _detailsController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.greyColor.withOpacity(0.1),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            maxLines: null,
                          ),
                          AppSpacing.verticalSpaceMedium,
                          Button(
                            text: 'Save and Post',
                            onPressed: () {},
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),

      //  Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: Column(
      //     children: [
      //       TextField(
      //         controller: _detailsController,
      //         decoration: const InputDecoration(
      //           labelText: 'Event Details',
      //           border: OutlineInputBorder(),
      //         ),
      //         maxLines: null,
      //       ),
      //       SizedBox(height: 20),
      //       ElevatedButton(
      //         onPressed: () {
      //           // Handle save action
      //           final updatedDetails = _detailsController.text;
      //           // Dispatch an event to update the event details
      //           // context.read<EventsBloc>().add(UpdateEventDetailsEvent(updatedDetails));
      //         },
      //         child: Text('Save'),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
