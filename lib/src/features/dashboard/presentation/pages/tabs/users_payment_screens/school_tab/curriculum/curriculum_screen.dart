import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/curriculum/add_curriculum_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CurriculumScreen extends StatelessWidget {
  const CurriculumScreen({super.key});

  static const String routeName = '/curriculum_screen';

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        controller: scrollController,
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 10,
                    child: Text(
                      'Scheme of Work/\nCurriculum',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 24.fontSize,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor,
                          ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          AddCurriculumScreen.routeName,
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(0.1),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/svg/plus1.svg',
                          color: AppColors.primaryColor,
                          height: 20.fontSize,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              AppSpacing.verticalSpaceMedium,
              CustomRawScroller(
                scrollController: scrollController,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor.withValues(alpha: .1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: ListTile(
                        onTap: () {},
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: AppSpacing.horizontalSpacing),
                        leading: SvgPicture.asset(
                          'assets/svg/document.svg',
                          height: 15.fontSize,
                        ),
                        title: Text(
                          'Name of curriculum for the class',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 14.fontSize,
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        subtitle: Column(
                          children: [
                            AppSpacing.verticalSpaceSmall,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Text(
                                      'Date this was created',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontSize: 12.fontSize,
                                            color: AppColors.greyColor,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    )),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColors.primaryColor),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Jss1, Jss2, Jss3 ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              fontSize: 12.fontSize,
                                              color: AppColors.primaryColor,
                                              fontWeight: FontWeight.w300,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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
