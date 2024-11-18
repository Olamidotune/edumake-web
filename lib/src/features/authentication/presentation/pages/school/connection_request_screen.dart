import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/connection_request_list_tile.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConnectionRequestScreen extends StatefulWidget {
  const ConnectionRequestScreen({super.key});

  static const String routeName = 'connectionRequest_screen';

  @override
  State<ConnectionRequestScreen> createState() =>
      _ConnectionRequestScreenState();
}

class _ConnectionRequestScreenState extends State<ConnectionRequestScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: RawScrollbar(
          controller: _scrollController,
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
            controller: _scrollController,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.horizontalSpacing,
                vertical: AppSpacing.verticalValueMedium,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.connectionResquest,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 24.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.secondaryTexColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Text(
                    AppStrings.connectionResquestWarning,
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
                      itemCount: 15,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              ConnectionRequestDetailsScreen.routeName,
                            );
                          },
                          child: const ConnectionRequestListTile(
                            titleName: 'Kamala Harris',
                            subTitleName: 'Donald Trump',
                            profilePic: null,
                            date: 'Today 4:20',
                            className: 'JSS 1',
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
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: RawScrollbar(
          controller: _scrollController,
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
            controller: _scrollController,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.horizontalSpacing,
                vertical: AppSpacing.verticalValueMedium,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kamala Harris ${AppStrings.wantsToConnectAndHaveAccessTo}',
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
                    child: const ConnectionRequestListTile(
                      titleName: 'Donald Trump',
                      subTitleName: 'New Delight Sec School.',
                      profilePic: null,
                      date: '',
                      className: 'JS1',
                    ),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: AppColors.primaryColor.withOpacity(0.1),
                      child: Icon(
                        Icons.person,
                        color: AppColors.primaryColor,
                        size: 60.fontSize,
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
                                AppStrings.secondConnectionResquestWarning,
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
  final ScrollController _scrollController = ScrollController();

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
          controller: _scrollController,
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
            controller: _scrollController,
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
                  Text(
                    AppStrings.others,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 13.fontSize,
                          fontWeight: FontWeight.w300,
                          color: AppColors.secondaryTexColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  TextFormField(
                    maxLines: 10,
                    cursorColor: AppColors.primaryColor,
                    decoration: InputDecoration(
                      suffixIcon: SvgPicture.asset(
                        'assets/svg/edit.svg',
                        color: AppColors.primaryColor,
                      ),
                      suffixIconConstraints: const BoxConstraints(
                        maxHeight: 20,
                        maxWidth: 20,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: AppSpacing.horizontalSpacingSmall,
                        vertical: AppSpacing.verticalValueSmall,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: AppColors.primaryColor.withOpacity(.1),
                      filled: true,
                    ),
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 13.fontSize,
                          fontWeight: FontWeight.w300,
                          color: AppColors.secondaryTexColor,
                        ),
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
