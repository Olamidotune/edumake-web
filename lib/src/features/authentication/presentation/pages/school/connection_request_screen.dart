import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/user.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/requests/requests_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/connection_request_list_tile.dart';
import 'package:edumake_frontend/src/shared/services/auth_services.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_big_text_form_field.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
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
                    itemBuilder: (context, index) {
                      return const CustomShimmer();
                    },
                    itemCount: 10,
                  ),
                );
              }
              if (state.getRequestModel?.data.length == 0) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: AppSpacing.verticalValueSpaceLarge * 8,
                        ),
                        Image.asset(
                          'assets/png/empty.png',
                          height: 150,
                        ),
                        Text(
                          'No Data Available',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize:
                                        20, // Assuming 20 is a valid font size
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primaryTextColor,
                                  ),
                        ),
                        AppSpacing.verticalSpaceSmall,
                        Text(
                          'Your connection requests will appear here once they are available. Please check back later or contact support if you believe this is an error.',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize:
                                        14, // Assuming 14 is a valid font size
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.secondaryTexColor,
                                  ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
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
                                      'Class name' // Use actual data from the request
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
    // ignore: unused_local_variable
    final requestId = args['requestId'];
    final parent = args['parent'];
    final wardName = args['wardName'];

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
                    "$parent ${AppStrings.wantsToConnectAndHaveAccessTo}",
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
                      className: 'Ward class',
                    ),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: AppColors.primaryColor.withOpacity(0.1),
                      child: SvgPicture.asset(
                        'assets/svg/parent_icon.svg',
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
                            'Kamala Harris',
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
                            '07080787201',
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
                            '12345678901',
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
                            'Mother',
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
                      Expanded(
                        child: Button(
                          text: AppStrings.accept,
                          onPressed: () {},
                        ),
                      ),
                      AppSpacing.horizontalSpaceMedium,
                      Expanded(
                        child: Button(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(RejectConnectionScreen.routeName);
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
              child: Column(
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
                        value: reasons[
                            AppStrings.theAccountDoesNotMatchStudentDetails],
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
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                    text: AppStrings.submit,
                    onPressed: () {},
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
