import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_big_text_form_field.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  static const String routeName = 'support_screen';

  @override
  Widget build(BuildContext context) {
    final scrollerController = ScrollController();
    return Scaffold(
      appBar: const CustomAppBar(),
      body: CustomRawScroller(
        scrollController: scrollerController,
        child: Padding(
          padding: EdgeInsets.all(
            AppSpacing.horizontalSpacingMedium,
          ),
          child: SingleChildScrollView(
            controller: scrollerController,
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.support,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 24.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryColor,
                        ),
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                _SupportListTile(
                  icon: 'chat',
                  title: 'Chat with School Admin',
                  onTap: () {},
                ),
                AppSpacing.verticalSpaceMedium,
                _SupportListTile(
                  icon: 'send',
                  title: 'Send a complain/Report',
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(SendComplaintScreen.routeName);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SupportListTile extends StatelessWidget {
  const _SupportListTile({
    required this.title,
    required this.icon,
    required this.onTap,
  });
  final String title;
  final String icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        onTap: onTap,
        leading: SvgPicture.asset(
          'assets/svg/$icon.svg',
          height: 24,
          width: 24,
          color: AppColors.primaryColor,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 14.fontSize,
                fontWeight: FontWeight.w400,
                color: AppColors.secondaryTexColor,
              ),
        ),
      ),
    );
  }
}

class SendComplaintScreen extends StatelessWidget {
  const SendComplaintScreen({super.key});

  static const String routeName = 'send_complaint_screen';

  @override
  Widget build(BuildContext context) {
    final complainController = TextEditingController();
    final scrollerController = ScrollController();
    return Scaffold(
      appBar: const CustomAppBar(),
      body: CustomRawScroller(
        scrollController: scrollerController,
        child: Padding(
          padding: EdgeInsets.all(
            AppSpacing.horizontalSpacingMedium,
          ),
          child: SingleChildScrollView(
            controller: scrollerController,
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Send a Complaint/\nReport',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 24.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryColor,
                        ),
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  'Feel free to report any misconduct or lay a complaint where you see any.',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12.fontSize,
                        fontWeight: FontWeight.w300,
                        color: AppColors.primaryTextColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                CustomBigTextFormField(
                  header: 'Note',
                  controller: complainController,
                ),
                SizedBox(
                  height:
                      MediaQuery.of(context).size.height < kMinSupportedHeight
                          ? 130.height
                          : 180.height,
                ),
                Button(
                  text: 'Send',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
