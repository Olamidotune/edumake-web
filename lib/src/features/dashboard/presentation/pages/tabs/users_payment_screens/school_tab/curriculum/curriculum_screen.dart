import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/extensions/string_extension.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/curriculum/curriculum_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/curriculum/add_curriculum_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

class CurriculumScreen extends StatelessWidget {
  const CurriculumScreen({super.key});

  static const String routeName = '/curriculum_screen';

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    final args =
        // ignore: cast_nullable_to_non_nullable
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final subjectId = args['subjectId'];

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
                            arguments: {'subjectId': subjectId});
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
                child: BlocBuilder<CurriculumBloc, CurriculumState>(
                  builder: (context, state) {
                    if (state.fetchCurriculumStatus ==
                        FormzSubmissionStatus.inProgress) {
                      return SizedBox(
                        height: 600,
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return const CustomShimmer();
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return AppSpacing.verticalSpaceMedium;
                          },
                          itemCount: 20,
                        ),
                      );
                    }

                    if (state.fetchCurriculumStatus ==
                        FormzSubmissionStatus.failure) {
                      return Center(
                          child: NoDataAvailable(
                              message:
                                  state.errorMessage ?? 'Something went wrong',
                              height: 3));
                    }

                    if (state.fetchCurriculumDatum?.isEmpty ?? true) {
                      return const Center(
                          child: NoDataAvailable(
                              message: 'No curriculum presently.', height: 3));
                    }
                    return ListView.separated(
                      itemCount: state.fetchCurriculumDatum?.length ?? 0,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final curriculumDetails =
                            state.fetchCurriculumDatum?[index];
                        return CurriculumTile(
                          title: curriculumDetails?.text ?? '',
                          date: formatLocalTime(curriculumDetails?.createdAt),
                          // classes: curriculumDetails?.classes.join(',') ?? '',
                          classes: 'classes',
                        );
                      },
                      separatorBuilder: (_, __) {
                        return AppSpacing.verticalSpaceMedium;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CurriculumTile extends StatelessWidget {
  const CurriculumTile({
    required this.title,
    required this.date,
    required this.classes,
    super.key,
    this.onTap,
  });
  final String title;
  final String date;
  final String classes;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withValues(alpha: .1),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: ListTile(
        onTap: () {},
        contentPadding:
            EdgeInsets.symmetric(horizontal: AppSpacing.horizontalSpacing),
        leading: SvgPicture.asset(
          'assets/svg/document.svg',
          height: 15.fontSize,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                      date,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 12.fontSize,
                            color: AppColors.greyColor,
                            fontWeight: FontWeight.w300,
                          ),
                    )),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.primaryColor),
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Center(
                      child: Text(
                        classes,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
    );
  }
}
