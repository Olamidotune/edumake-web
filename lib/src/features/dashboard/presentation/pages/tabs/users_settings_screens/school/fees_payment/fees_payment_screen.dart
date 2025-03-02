import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school/fees_payment/add_fees_payment_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

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
      setState(() {}); // Refresh UI when tab changes
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

class FeesTabView extends StatelessWidget {
  const FeesTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeesPaymentBloc, FeesPaymentState>(
      builder: (context, state) {
        if (state.fetchFeesPaymentStatus == FormzSubmissionStatus.inProgress) {
          return const Center(
            child: SpinKitPulsingGrid(
              color: AppColors.primaryColor,
              size: 30,
            ),
          );
        }

        if (state.errorMessage != null) {
          return Center(child: Text('Error: ${state.errorMessage}'));
        }

        if (state.datum == null || state.datum!.isEmpty) {
          return const Center(child: Text('No fees found'));
        }

        return ListView.separated(
          itemCount: state.datum!.length,
          itemBuilder: (context, index) {
            final details = state.datum![index];
            return FeesContainer(
              onTap: () {},
              title: details.title,
              term: details.term,
              amount: details.totalAmount,
            );
          },
          separatorBuilder: (context, index) {
            return AppSpacing.verticalSpaceMedium;
          },
        );
      },
    );
  }
}

class PaymentContainer extends StatelessWidget {
  const PaymentContainer({required this.payment, super.key});

  final String payment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' payment.title',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          AppSpacing.verticalSpaceSmall,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Date: ${'date'}'),
              Text(
                // '\$${payment.amount.toStringAsFixed(2)}',
                'here',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//ADD THE PAYMENT HERE
class PaymentsTabView extends StatelessWidget {
  const PaymentsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeesPaymentBloc, FeesPaymentState>(
      builder: (context, state) {
        if (state.fetchFeesPaymentStatus == FormzSubmissionStatus.inProgress) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.errorMessage != null) {
          return Center(child: Text('Error: ${state.errorMessage}'));
        }

        if (state.datum == null || state.datum!.isEmpty) {
          return const Center(child: Text('No payments found'));
        }

        return ListView.separated(
          itemCount: state.datum!.length,
          itemBuilder: (context, index) {
            return const PaymentContainer(payment: 'payment');
          },
          separatorBuilder: (context, index) {
            return AppSpacing.verticalSpaceMedium;
          },
        );
      },
    );
  }
}

class FeesContainer extends StatelessWidget {
  const FeesContainer({
    required this.title,
    required this.term,
    required this.amount,
    super.key,
    this.onTap,
  });
  final String title;
  final String term;
  final int amount;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeesPaymentBloc, FeesPaymentState>(
      builder: (context, state) {
        return InkWell(
          splashColor: AppColors.whiteColor,
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withValues(alpha: .05),
              border: Border.all(
                color: AppColors.primaryColor.withValues(alpha: .05),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: AppColors.greyColor.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
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
                              'Term',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
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
                          term,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 15.fontSize,
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w900,
                                  ),
                          maxLines: 2,
                        ),
                        Text(
                          '$amount',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
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
      },
    );
  }
}
