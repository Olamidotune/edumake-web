import 'package:cached_network_image/cached_network_image.dart';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/timetable/timetable_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/lecture_timetable/add_lecture_time_table.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

class LectureTimeTableScreen extends StatelessWidget {
  const LectureTimeTableScreen({super.key});

  static const String routeName = '/lecture_timeTable_screen';

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, String?>;
    final className = args['className'];
    final classId = args['classId'];
    final wardSchoolId = args['wardSchoolId'];
    final wardClassId = args['wardClassId'];

    final role = context.read<AuthBloc>().state.user?.role;

    final refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

    return Scaffold(
      appBar: CustomAppBar(
        title: AppStrings.lectureTimeTable,
        action: Builder(
          builder: (context) {
            if (context.read<AuthBloc>().state.user?.role?.contains('parent') ??
                true) {
              return const SizedBox.shrink();
            } else {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(AddLectureTimeTableScreen.routeName);
                },
                child: SvgPicture.asset(
                  'assets/svg/plus1.svg',
                  height: 20.fontSize,
                  color: AppColors.primaryColor,
                ),
              );
            }
          },
        ),
      ),
      body: CustomRawScroller(
        scrollController: scrollController,
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
          child: RefreshIndicator(
            key: refreshIndicatorKey,
            backgroundColor: AppColors.secondaryColor,
            color: AppColors.whiteColor,
            onRefresh: () async {
              context.read<TimetableBloc>().add(
                    TimetableEvent.fetchTimetable(
                        role!.contains('parent')
                            ? wardClassId.toString()
                            : classId.toString(),
                        role.contains('parent')
                            ? wardSchoolId.toString()
                            : null),
                  );

              return;
            },
            child: SingleChildScrollView(
                controller: scrollController,
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Class: ',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 12.fontSize,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyColor,
                            ),
                        children: [
                          TextSpan(
                            text: className.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 12.fontSize,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryColor,
                                ),
                          ),
                        ],
                      ),
                    ),
                    AppSpacing.verticalSpaceHuge,
                    BlocBuilder<TimetableBloc, TimetableState>(
                      builder: (context, state) {
                        if (state.fetchTimeTableStatus ==
                            FormzSubmissionStatus.inProgress) {
                          return const Center(
                            child: SpinKitPulsingGrid(
                              color: AppColors.primaryColor,
                              size: 30,
                            ),
                          );
                        }

                        if (state.timeTableDatum?.isEmpty ?? true) {
                          return const Center(
                              child: NoDataAvailable(
                                  message: 'No timetable added yet',
                                  height: 9));
                        }
                        if (state.fetchTimeTableStatus ==
                            FormzSubmissionStatus.failure) {
                          return const Center(
                              child: NoDataAvailable(
                                  message: 'Something went wrong', height: 9));
                        }
                        return Column(
                          children: [
                            ListView.separated(
                              shrinkWrap: true,
                              // controller: scrollController,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: state.timeTableDatum?.length ?? 0,
                              itemBuilder: (context, index) {
                                final timeTables = state.timeTableDatum?[index];
                                return Column(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: 'Title: ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              fontSize: 12.fontSize,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.greyColor,
                                            ),
                                        children: [
                                          TextSpan(
                                            text: timeTables?.title ?? '',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  fontSize: 12.fontSize,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.blackColor,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    AppSpacing.verticalSpaceMedium,
                                    CachedNetworkImage(
                                      imageUrl: timeTables?.fileUrl ?? '',
                                      placeholder: (context, url) =>
                                          const Center(
                                        child: SpinKitPulsingGrid(
                                          color: AppColors.primaryColor,
                                          size: 30,
                                        ),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          Column(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/svg/error.svg'),
                                          AppSpacing.verticalSpaceSmall,
                                          Text(
                                            'Something went wrong while downloading the image',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                ),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                              separatorBuilder: (context, index) {
                                return AppSpacing.verticalSpaceMedium;
                              },
                            )
                          ],
                        );
                      },
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
