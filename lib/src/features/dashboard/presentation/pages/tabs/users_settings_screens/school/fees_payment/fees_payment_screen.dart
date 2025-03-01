// ignore_for_file: must_be_immutable

import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/add_management_segments.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school/fees_payment/add_fees_payment_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeePaymentScreen extends StatefulWidget {
  const FeePaymentScreen({super.key});

  static const String routeName = '/school-fees-payment';

  @override
  State<FeePaymentScreen> createState() => _FeePaymentScreenState();
}

class _FeePaymentScreenState extends State<FeePaymentScreen>
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
                      AppStrings.paymentFees,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontFamily: 'HelveticaNeueRounded',
                            fontSize: 32.fontSize,
                            fontWeight: FontWeight.w300,
                            color: AppColors.primaryColor,
                          ),
                    ),
                    AppSpacing.verticalSpaceTiny,
                    Text(
                      'Manage the fees and payment history of the students.',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'HelveticaNeueRounded',
                            fontSize: 12.fontSize,
                            fontWeight: FontWeight.w300,
                            color: AppColors.primaryTextColor,
                          ),
                    ),
                    AppSpacing.verticalSpaceLarge,
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(AddFeesPaymentScreen.routeName);
                      },
                      child: Container(
                        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primaryColor),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/svg/plus1.svg',
                              color: AppColors.primaryColor,
                              height: 18.fontSize,
                            ),
                            AppSpacing.horizontalSpaceMedium,
                            Text(
                              'Add Fees',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 16.fontSize,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primaryColor,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AppSpacing.verticalSpaceLarge,
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
                        physics: const NeverScrollableScrollPhysics(),
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
                              AppStrings.fees,
                              style: TextStyle(
                                color: _tabController.index == 0
                                    ? AppColors.whiteColor
                                    : AppColors.primaryTextColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              AppStrings.payments,
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
        AppSpacing.horizontalSpaceMassive,
        Expanded(
          child: IndexedStack(
            index: widget.selectedIndex,
            children: const [
              FeesContainer(),
            ],
          ),
        ),
      ],
    );
  }
}

class FeesContainer extends StatelessWidget {
  const FeesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor.withValues(alpha: .05),
          border: Border.all(color: AppColors.primaryColor),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                AppStrings.schoolFeePayment,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 14.fontSize,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const Divider(
                color: AppColors.greyColor,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: AppColors.primaryColor,
                          size: 17.fontSize,
                        ),
                        Text(
                          'Recipient/Payer',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 15.fontSize,
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpaceTiny,
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Jss! Students',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 15.fontSize,
                            color: AppColors.primaryTextColor,
                            fontWeight: FontWeight.w900,
                          ),
                      maxLines: 2,
                    ),
                    Text(
                      'Amount in Naira',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 15.fontSize,
                            color: AppColors.primaryTextColor,
                            fontWeight: FontWeight.w900,
                          ),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
                        fontSize: 12.fontSize,
                      ),
                ),
                AppSpacing.verticalSpaceMassive,
                Text(
                  'N$price',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.fontSize,
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
              text: 'Subscribe for $index',
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  AddManagementSegmentsScreen.routeName,
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
