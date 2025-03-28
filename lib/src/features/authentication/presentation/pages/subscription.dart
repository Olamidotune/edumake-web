// ignore_for_file: must_be_immutable

import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in/sign_in.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SchoolSubscriptionScreen extends StatefulWidget {
  const SchoolSubscriptionScreen({super.key});

  static const String routeName = '/school-subscription';

  @override
  State<SchoolSubscriptionScreen> createState() =>
      _SchoolSubscriptionScreenState();
}

class _SchoolSubscriptionScreenState extends State<SchoolSubscriptionScreen>
    with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  late final TabController _tabController =
      TabController(length: 2, vsync: this);
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: RawScrollbar(
          thumbVisibility: true,
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
          child: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              controller: _scrollController,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.horizontalSpacing,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.subscription,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontFamily: 'HelveticaNeueRounded',
                            fontSize: 40,
                            fontWeight: FontWeight.w300,
                            color: AppColors.primaryColor,
                          ),
                    ),
                    AppSpacing.verticalSpaceTiny,
                    Text(
                      AppStrings.selectASubscriptionPlan,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'HelveticaNeueRounded',
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: AppColors.primaryTextColor,
                          ),
                    ),
                    AppSpacing.verticalSpaceMedium,
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.shadowColor,
                            blurRadius: 10,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: AppColors.primaryColor,
                        ),
                        dividerColor: Colors.transparent,
                        controller: _tabController,
                        onTap: (value) {
                          setState(() {
                            _tabController.index = value;
                          });
                        },
                        tabs: [
                          Tab(
                            child: Text(
                              AppStrings.quarterlyPlan,
                              style: TextStyle(
                                color: _tabController.index == 0
                                    ? AppColors.whiteColor
                                    : AppColors.primaryTextColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              AppStrings.yearlyPlan,
                              style: TextStyle(
                                color: _tabController.index == 1
                                    ? AppColors.whiteColor
                                    : AppColors.primaryTextColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    AppSpacing.verticalSpaceMedium,
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.6.height,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          PlanView(selectedIndex: selectedIndex),
                          PlanView(selectedIndex: selectedIndex),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PlanView extends StatefulWidget {
  PlanView({
    required this.selectedIndex,
    super.key,
  });

  int selectedIndex;

  @override
  State<PlanView> createState() => _PlanViewState();
}

class _PlanViewState extends State<PlanView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SubscriptionContainer(
                plan: AppStrings.essentialPackage,
                price: '10,000',
                onTap: () {
                  setState(() {
                    widget.selectedIndex = 0;
                  });
                },
                color: widget.selectedIndex == 0
                    ? AppColors.primaryColor
                    : AppColors.greyColor.withOpacity(0.1),
                textColor: widget.selectedIndex == 0
                    ? AppColors.whiteColor
                    : AppColors.primaryTextColor,
              ),
            ),
            AppSpacing.horizontalSpaceSmall,
            Expanded(
              child: SubscriptionContainer(
                plan: AppStrings.customizedPackage,
                price: '20,000',
                onTap: () {
                  setState(() {
                    widget.selectedIndex = 1;
                  });
                },
                color: widget.selectedIndex == 1
                    ? AppColors.primaryColor
                    : AppColors.greyColor.withOpacity(0.1),
                textColor: widget.selectedIndex == 1
                    ? AppColors.whiteColor
                    : AppColors.primaryTextColor,
              ),
            ),
            AppSpacing.horizontalSpaceSmall,
            Expanded(
              child: SubscriptionContainer(
                plan: AppStrings.ultimatePackage,
                price: '30,000',
                onTap: () {
                  setState(() {
                    widget.selectedIndex = 2;
                  });
                },
                color: widget.selectedIndex == 2
                    ? AppColors.primaryColor
                    : AppColors.greyColor.withOpacity(0.1),
                textColor: widget.selectedIndex == 2
                    ? AppColors.whiteColor
                    : AppColors.primaryTextColor,
              ),
            ),
          ],
        ),
        AppSpacing.horizontalSpaceMassive,
        Expanded(
          child: IndexedStack(
            index: widget.selectedIndex,
            children: const [
              PackageDetails(
                description: AppStrings.essentialPackageDescription,
                title: AppStrings.essentialPackageHeader,
                features: [
                  AppStrings.accessPermission,
                  AppStrings.examManagement,
                  AppStrings.lessonManagement,
                  AppStrings.sessionManagement,
                  AppStrings.teacherManagement,
                  AppStrings.holidayManagement,
                  AppStrings.studentManagement,
                  AppStrings.academyManagement,
                  AppStrings.timeTableManagement,
                  AppStrings.attendanceManagement,
                ],
                index: 20000,
              ),
              PackageDetails(
                title: 'Customized Package',
                description:
                    'Ideal for large schools with comprehensive needs.',
                features: [
                  'Access permission',
                  'Exam Management',
                  'Lesson Management',
                  'Session Management',
                  'Teacher Management',
                  'Holiday Management',
                  'Student Management',
                  'Academy Management',
                  'Time Table Management',
                  'Attendance Management',
                ],
                index: 1,
              ),
              PackageDetails(
                title: 'Ultimate Package',
                description:
                    'Ideal for large schools with comprehensive needs.',
                features: [
                  'Access permission',
                  'Exam Management',
                  'Lesson Management',
                  'Session Management',
                  'Teacher Management',
                  'Holiday Management',
                  'Student Management',
                  'Academy Management',
                  'Time Table Management',
                  'Attendance Management',
                ],
                index: 2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SubscriptionContainer extends StatelessWidget {
  const SubscriptionContainer({
    required this.plan,
    required this.price,
    required this.color,
    required this.textColor,
    super.key,
    this.onTap,
  });

  final String plan;
  final String price;
  final Color color;
  final Color textColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.only(
              left: AppSpacing.horizontalSpacing,
              right: AppSpacing.horizontalSpacing,
              top: 10.height,
              bottom: 10.height,
            ),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: AppColors.primaryColor.withOpacity(0.3),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  plan,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: textColor,
                        fontSize: 19,
                      ),
                ),
                AppSpacing.verticalSpaceMassive,
                Text(
                  'N$price',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                ),
              ],
            ),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
      ],
    );
  }
}

class PackageDetails extends StatelessWidget {
  const PackageDetails({
    required this.title,
    required this.description,
    required this.features,
    required this.index,
    super.key,
  });
  final String title;
  final String description;
  final List<String> features;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: AppColors.primaryColor,
                    fontSize: 24,
                  ),
            ),
            AppSpacing.verticalSpaceSmall,
            Text(description),
            AppSpacing.verticalSpaceLarge,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: features
                  .map(
                    (feature) => Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: AppColors.primaryColor,
                          size: 16,
                        ),
                        AppSpacing.horizontalSpaceSmall,
                        Expanded(child: Text(feature)),
                      ],
                    ),
                  )
                  .toList(),
            ),
            AppSpacing.verticalSpaceLarge,
            Button(
              isWeb: true,
              text: 'Subscribe for $index',
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  SignIn.routeName,
                  (route) => true,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
