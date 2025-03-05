import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school/fees_payment/add_fees_payment_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school/fees_payment/tabbar_view/fees_tab_view.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school/fees_payment/tabbar_view/payments_tab_view.dart';
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
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.horizontalSpacing,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              AppSpacing.verticalSpaceLarge,
              _buildAddFeesButton(context),
              AppSpacing.verticalSpaceLarge,
              _buildTabBar(context),
              AppSpacing.verticalSpaceLarge,
              Expanded(
                child: _buildTabBarView(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.paymentFees,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontFamily: 'HelveticaNeueRounded',
                fontSize: 32,
                fontWeight: FontWeight.w300,
                color: AppColors.primaryColor,
              ),
        ),
        AppSpacing.verticalSpaceTiny,
        Text(
          'Manage the fees and payment history of the students.',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontFamily: 'HelveticaNeueRounded',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: AppColors.primaryTextColor,
              ),
        ),
      ],
    );
  }

  Widget _buildAddFeesButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AddFeesPaymentScreen.routeName);
      },
      child: Container(
        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svg/plus1.svg',
              colorFilter: const ColorFilter.mode(
                AppColors.primaryColor,
                BlendMode.srcIn,
              ),
              height: 18,
            ),
            AppSpacing.horizontalSpaceMedium,
            Text(
              'Add Fees',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: 'HelveticaNeueRounded',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar(BuildContext context) {
    return Container(
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
    );
  }

  Widget _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: const [
        FeesTabView(),
        PaymentsTabView(),
      ],
    );
  }
}
