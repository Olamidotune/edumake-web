import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/requests/requests_bloc.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_big_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class RejectConnectionScreen extends StatefulWidget {
  const RejectConnectionScreen({super.key});

  static const String routeName = 'rejectConnection_screen';

  @override
  State<RejectConnectionScreen> createState() => _RejectConnectionScreenState();
}

class _RejectConnectionScreenState extends State<RejectConnectionScreen> {
  final ScrollController scrollController = ScrollController();

  Map<String, bool> reasons = {
    AppStrings.theAccountDoesNotMatchStudentDetails: false,
    AppStrings.theParentDidNotVetTheAccountAskingForPermissions: false,
    AppStrings.theAccountNINDetailsDoesNotMatchTheAccountdetails: false,
    AppStrings.theAccountAlreadyHasAMaximumNumberOfConnector: false,
  };

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;

    final requestId = args['requestId'];
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
            controller: scrollController,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.horizontalSpacing,
                vertical: AppSpacing.verticalValueMedium,
              ),
              child: BlocBuilder<RequestsBloc, RequestsState>(
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.whyDidYouRejectTheRequest,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontFamily: 'HelveticaNeueRounded',
                              fontSize: 24.fontSize,
                              fontWeight: FontWeight.w400,
                              color: AppColors.secondaryTexColor,
                            ),
                      ),
                      AppSpacing.verticalSpaceMedium,
                      Row(
                        children: [
                          Checkbox(
                            side: const BorderSide(),
                            activeColor: AppColors.primaryColor,
                            value: reasons[AppStrings
                                .theAccountDoesNotMatchStudentDetails],
                            onChanged: (bool? value) {
                              setState(() {
                                reasons[AppStrings
                                        .theAccountDoesNotMatchStudentDetails] =
                                    value ?? false;
                              });
                            },
                          ),
                          Expanded(
                            child: Text(
                              AppStrings.theAccountDoesNotMatchStudentDetails,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 13.fontSize,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.secondaryTexColor,
                                  ),
                              maxLines: 3,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                      AppSpacing.verticalSpaceMedium,
                      Row(
                        children: [
                          Checkbox(
                            side: const BorderSide(),
                            activeColor: AppColors.primaryColor,
                            value: reasons[AppStrings
                                .theParentDidNotVetTheAccountAskingForPermissions],
                            onChanged: (bool? value) {
                              setState(() {
                                reasons[AppStrings
                                        .theParentDidNotVetTheAccountAskingForPermissions] =
                                    value ?? false;
                              });
                            },
                          ),
                          Expanded(
                            child: Text(
                              AppStrings
                                  .theParentDidNotVetTheAccountAskingForPermissions,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 13.fontSize,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.secondaryTexColor,
                                  ),
                              maxLines: 3,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                      AppSpacing.verticalSpaceMedium,
                      Row(
                        children: [
                          Checkbox(
                            side: const BorderSide(),
                            activeColor: AppColors.primaryColor,
                            value: reasons[AppStrings
                                .theAccountNINDetailsDoesNotMatchTheAccountdetails],
                            onChanged: (bool? value) {
                              setState(() {
                                reasons[AppStrings
                                        .theAccountNINDetailsDoesNotMatchTheAccountdetails] =
                                    value ?? false;
                              });
                            },
                          ),
                          Expanded(
                            child: Text(
                              AppStrings
                                  .theAccountNINDetailsDoesNotMatchTheAccountdetails,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 13.fontSize,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.secondaryTexColor,
                                  ),
                              maxLines: 3,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                      AppSpacing.verticalSpaceMedium,
                      Row(
                        children: [
                          Checkbox(
                            side: const BorderSide(),
                            activeColor: AppColors.primaryColor,
                            value: reasons[AppStrings
                                .theAccountAlreadyHasAMaximumNumberOfConnector],
                            onChanged: (bool? value) {
                              setState(() {
                                reasons[AppStrings
                                        .theAccountAlreadyHasAMaximumNumberOfConnector] =
                                    value ?? false;
                              });
                            },
                          ),
                          Expanded(
                            child: Text(
                              AppStrings
                                  .theAccountAlreadyHasAMaximumNumberOfConnector,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 13.fontSize,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.secondaryTexColor,
                                  ),
                              maxLines: 3,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                      AppSpacing.verticalSpaceMedium,
                      AppSpacing.verticalSpaceSmall,
                      const CustomBigTextFormField(
                        header: AppStrings.others,
                      ),
                      SizedBox(height: AppSpacing.verticalValueSpaceLarge * 3),
                      Button(
                        busy: state.rejectRequestStatus ==
                            FormzSubmissionStatus.inProgress,
                        text: AppStrings.submit,
                        onPressed: () {
                          context.read<RequestsBloc>().add(
                                RequestsEvent.rejectRequest(
                                  requestId.toString(),
                                  "This account details does not match the student's details",
                                ),
                              );
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
