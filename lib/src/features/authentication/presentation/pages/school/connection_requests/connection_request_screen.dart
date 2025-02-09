import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/connection_requests/connection_request_details_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/requests/requests_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/connection_request_list_tile.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class ConnectionRequestScreen extends StatelessWidget {
  const ConnectionRequestScreen({super.key});

  static const String routeName = 'connectionRequest_screen';

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
          child: BlocBuilder<RequestsBloc, RequestsState>(
            builder: (context, state) {
              if (state.getRequestStatus == FormzSubmissionStatus.inProgress) {
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
              if (state.getRequestModel?.data.length == 0) {
                return const NoDataAvailable(
                  message:
                      'Your connection requests will appear here once they are available. Please check back later or contact support if you believe this is an error.',
                );
              }
              return SingleChildScrollView(
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
                        AppStrings.connectionRequest,
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: 24.fontSize,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.secondaryTexColor,
                                ),
                      ),
                      AppSpacing.verticalSpaceSmall,
                      Text(
                        AppStrings.connectionRequestWarning,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'HelveticaNeueRounded',
                              fontWeight: FontWeight.w400,
                              color: AppColors.primaryTextColor,
                            ),
                      ),
                      AppSpacing.verticalSpaceMedium,
                      Container(
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
                          itemCount: state.getRequestModel?.data.length ?? 0,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            // Get the current request from the list
                            final request = state.getRequestModel!.data[index];
                            return GestureDetector(
                              onTap: () {
                                context.read<RequestsBloc>().add(
                                      RequestsEvent.selectedRequest(
                                        request.student.name,
                                      ),
                                    );
                                context.read<RequestsBloc>().add(
                                      RequestsEvent.selectedRequestId(
                                        request.id,
                                      ),
                                    );
                                Navigator.of(context).pushNamed(
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
                                subTitleName: request.student
                                    .name, // Use actual data from the request
                                date: request.createdAt
                                    .toString(), // Use actual data from the request
                                className:
                                    'Class name', // Use actual data from the request
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
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
