import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/user.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/connection_requests/reject_connection_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/requests/requests_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/connection_request_list_tile.dart';
import 'package:edumake_frontend/src/shared/services/auth_services.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

class ConnectionRequestDetailsScreen extends StatefulWidget {
  const ConnectionRequestDetailsScreen({super.key});

  static const String routeName = 'connectionRequestDetails_Screen';

  @override
  State<ConnectionRequestDetailsScreen> createState() =>
      _ConnectionRequestDetailsScreenState();
}

class _ConnectionRequestDetailsScreenState
    extends State<ConnectionRequestDetailsScreen> {
  final ScrollController scrollController = ScrollController();

  User? _user;

  @override
  void initState() {
    super.initState();
    AuthServices().getUser().then((user) => setState(() => _user = user));
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;

    final requestId = args['requestId'];
    final parent = args['parent'];
    final wardName = args['wardName'];
    final parentNIN = args['parentNIN'];
    final parentPhoneNumber = args['parentPhoneNumber'];
    final relationship = args['relationship'];
    final wardClass = args['wardClass'];

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
                    '$parent ${AppStrings.wantsToConnectAndHaveAccessTo}',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 13.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryTextColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      left: AppSpacing.horizontalSpacing,
                      right: AppSpacing.horizontalSpacing,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ConnectionRequestStudentListTile(
                      titleName: wardName.toString(),
                      subTitleName:
                          '${context.read<AuthBloc>().state.user?.school?.schoolName ?? _user?.school?.schoolName}',
                      date: '',
                      className: wardClass.toString(),
                    ),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: AppColors.primaryColor.withOpacity(0.1),
                      child: SvgPicture.asset(
                        'assets/svg/parent.svg',
                        height: 60.fontSize,
                      ),
                    ),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Text(
                              AppStrings.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 13.fontSize,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryTextColor,
                                  ),
                            ),
                          ),
                          Text(
                            parent.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: 13.fontSize,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColor,
                                ),
                          ),
                        ],
                      ),
                      AppSpacing.verticalSpaceHuge,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Text(
                              AppStrings.phoneNumber,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 13.fontSize,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryTextColor,
                                  ),
                            ),
                          ),
                          Text(
                            '$parentPhoneNumber',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: 13.fontSize,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColor,
                                ),
                          ),
                        ],
                      ),
                      AppSpacing.verticalSpaceHuge,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Text(
                              AppStrings.nin,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 13.fontSize,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryTextColor,
                                  ),
                            ),
                          ),
                          Text(
                            '$parentNIN',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: 13.fontSize,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColor,
                                ),
                          ),
                        ],
                      ),
                      AppSpacing.verticalSpaceHuge,
                      Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Text(
                              AppStrings.relationWithStudent,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 13.fontSize,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryTextColor,
                                  ),
                            ),
                          ),
                          Text(
                            relationship.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: 13.fontSize,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColor,
                                ),
                          ),
                        ],
                      ),
                      AppSpacing.verticalSpaceHuge,
                      Container(
                        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                        decoration: BoxDecoration(
                          color: AppColors.yellowWarningColor.withOpacity(0.2),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Expanded(
                              child: Icon(
                                Icons.warning_amber,
                                color: AppColors.yellowWarningIconColor,
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Text(
                                AppStrings.secondConnectionRequestWarning,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontFamily: 'HelveticaNeueRounded',
                                      fontSize: 13.fontSize,
                                      color: AppColors.secondaryTexColor,
                                    ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  AppSpacing.verticalSpaceLarge,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Accept Button with BlocConsumer

                      Expanded(
                        child: BlocConsumer<RequestsBloc, RequestsState>(
                          listener: (context, state) {
                            if (state.acceptRequestStatus ==
                                FormzSubmissionStatus.success) {
                              // Only add this event once when successful
                              context.read<RequestsBloc>().add(
                                    RequestsEvent.requestStatusChanged(
                                      requestId.toString(),
                                    ),
                                  );
                              ToastService.toast(
                                'Request accepted successfully',
                              );
                            } else if (state.acceptRequestStatus ==
                                FormzSubmissionStatus.failure) {
                              // Use else if instead of a separate if
                              // This ensures only one path is taken
                              ToastService.toast(
                                'Something went wrong',
                                ToastType.error,
                              );
                            }
                          },
                          builder: (context, state) {
                            return Button(
                              busy: state.acceptRequestStatus ==
                                  FormzSubmissionStatus.inProgress,
                              text: AppStrings.accept,
                              onPressed: () {
                                context.read<RequestsBloc>().add(
                                      RequestsEvent.acceptRequest(
                                          requestId.toString()),
                                    );
                              },
                            );
                          },
                        ),
                      ),
                      AppSpacing.horizontalSpaceMedium,
                      // Reject Button
                      Expanded(
                        child: Button(
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              RejectConnectionScreen.routeName,
                              arguments: {
                                'requestId': requestId,
                              },
                            );
                          },
                          text: AppStrings.reject,
                          buttonColor: Colors.white,
                        ),
                      ),
                    ],
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
