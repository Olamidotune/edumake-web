import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_big_text_form_field.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddEventsScreen extends StatelessWidget {
  const AddEventsScreen({super.key});

  static const String routeName = '/add-events';

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final eventTitleController = TextEditingController();
    final eventTitleFocusNode = FocusNode();
    final eventDateController = TextEditingController();
    final eventDateFocusNode = FocusNode();

    return Scaffold(
      appBar: const CustomAppBar(),
      body: CustomRawScroller(
        scrollController: scrollController,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          controller: scrollController,
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.addEvents,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 24.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                CustomTextFormField(
                  title: AppStrings.eventTitle,
                  controller: eventTitleController,
                  focusNode: eventTitleFocusNode,
                  hintText: AppStrings.eventTitle,
                  keyboardType: TextInputType.text,
                  customFilled: true,
                  editIcon: SvgPicture.asset(
                    'assets/svg/edit.svg',
                    color: AppColors.primaryColor,
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                CustomTextFormField(
                  title: AppStrings.recipients,
                  controller: eventDateController,
                  focusNode: eventDateFocusNode,
                  hintText: AppStrings.recipients,
                  keyboardType: TextInputType.text,
                  customFilled: true,
                  editIcon: SvgPicture.asset(
                    'assets/svg/calendar.svg',
                    color: AppColors.primaryColor,
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                CustomTextFormField(
                  title: AppStrings.eventsDate,
                  controller: eventDateController,
                  focusNode: eventDateFocusNode,
                  hintText: AppStrings.eventsDate,
                  keyboardType: TextInputType.text,
                  customFilled: true,
                  editIcon: SvgPicture.asset(
                    'assets/svg/calendar.svg',
                    color: AppColors.primaryColor,
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                const CustomBigTextFormField(header: AppStrings.eventsDetails),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '${AppStrings.associatedEvent} (${AppStrings.optional})',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 12.fontSize,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceSmall,
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 100.height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/svg/upload.svg',
                            color: AppColors.primaryColor,
                          ),
                          AppSpacing.verticalSpaceMedium,
                          Text(
                            '${AppStrings.upload} ${AppStrings.pngJpg}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 12.fontSize,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primaryTextColor,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                Button(
                  text: AppStrings.review,
                  onPressed: () {},
                ),
                AppSpacing.verticalSpaceMedium,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
