import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/events/events_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/parent/get_wards/get_wards_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/classes_events_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/parent_tab/ward_subject_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/ward_big_card.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

class ParentWardScreen extends StatelessWidget {
  const ParentWardScreen({super.key});
  // final List<StudentModel> students;

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return BlocBuilder<GetWardsBloc, GetWardsState>(
      builder: (context, state) {
        if (state.getWardStatus == FormzSubmissionStatus.inProgress) {
          return SizedBox(
            height: 800,
            child: ListView.builder(
              controller: scrollController,
              itemBuilder: (context, index) {
                return const CustomShimmer();
              },
              itemCount: 10,
            ),
          );
        }
        if (state.getWardRequestModel?.data.isEmpty ?? false) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: AppSpacing.verticalValueSpaceLarge * 7),
              Image.asset(
                'assets/png/empty.png',
                height: 150,
              ),
              AppSpacing.verticalSpaceMedium,
              Text(
                'Search the full name of your ward or the school, crosscheck to be sure it is the correct school then make a result to have access to his academic data.',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 14, // Assuming 20 is a valid font size
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryTextColor,
                    ),
                textAlign: TextAlign.center,
              ),
              AppSpacing.verticalSpaceSmall,
            ],
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${AppStrings.yourWards} (${state.getWardRequestModel?.data.length ?? 0})',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            AppSpacing.verticalSpaceMedium,
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.getWardRequestModel?.data.length ?? 0,
              itemBuilder: (context, index) {
                final wardDetails = state.getWardRequestModel?.data[index];
                return GestureDetector(
                  //calling it here
                  onTap: () {
                    //calling it here
                    context.read<GetSchoolDataBloc>().add(
                          GetSchoolDataEvent.fetchSubjectForStudent(
                            wardDetails?.id,
                          ),
                        );
                    context.read<GetSchoolDataBloc>().add(
                          GetSchoolDataEvent.onSelectedSubjectNameChanged(
                            wardDetails?.id,
                          ),
                        );

                    Navigator.of(context, rootNavigator: true).pushNamed(
                      WardDetailScreen.routeName,
                      arguments: {
                        'wardName': wardDetails?.wardName ?? '',
                        'wardClass': wardDetails?.wardDatumClass.name,
                        'wardSchool': wardDetails?.wardDatumSchool.schoolName,
                        'wardId': wardDetails?.id,
                      },
                    );
                  },
                  child: WardBigCard(
                    wardName: wardDetails?.wardName ?? '',
                    wardClass: wardDetails?.wardDatumClass.name ?? '',
                    wardSchool: wardDetails?.wardDatumSchool.schoolName ?? '',
                    wardNextEvent: 'Upcoming event',
                    wardAttendance: 'Attendance',
                    feesAmount: '20,000',
                    color: AppColors.purpleColor,
                    wardGender: 'Female',
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return AppSpacing.verticalSpaceMedium;
              },
            ),
          ],
        );
      },
    );
  }
}

class WardDetailScreen extends StatelessWidget {
  const WardDetailScreen({super.key});

  static const routeName = '/ward-details';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, String?>;
    final wardName = args['wardName'];
    final wardClass = args['wardClass'];
    final wardSchool = args['wardSchool'];
    final wardId = args['wardId'];

    final scrollController = ScrollController();
    final parentSchoolId = context
        .read<GetWardsBloc>()
        .state
        .getWardRequestModel
        ?.data
        .first
        .wardDatumSchool
        .id;

    return Scaffold(
      body: BlocBuilder<GetSchoolDataBloc, GetSchoolDataState>(
        builder: (context, state) {
          return SafeArea(
            child: CustomRawScroller(
              scrollController: scrollController,
              child: Padding(
                padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                child: SingleChildScrollView(
                  controller: scrollController,
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      _WardDetailsTopContainer(
                        wardName: wardName,
                        wardSchool: wardSchool,
                        wardClass: wardClass,
                      ),
                      AppSpacing.verticalSpaceLarge,
                      const _WardDetailsButton(
                        AppStrings.fees,
                        'payment',
                        'Paid',
                        null,
                      ),
                      AppSpacing.verticalSpaceSmall,
                      _WardDetailsButton(
                        AppStrings.subjectCourses,
                        'document',
                        state.fetchSubjectForStudentStatus ==
                                FormzSubmissionStatus.inProgress
                            ? 'Loading...'
                            //
                            : state.getSubjectForStudent?.data.length
                                    .toString() ??
                                '',
                        () {
                          context.read<GetSchoolDataBloc>().add(
                                GetSchoolDataEvent.fetchSubjectForStudent(
                                  wardId,
                                ),
                              );
                          Navigator.of(context).pushNamed(
                            WardSubjectScreen.routeName,
                            arguments: {
                              'studentName': wardName,
                              'className': wardClass,
                              'schoolName': wardSchool,
                            },
                          );
                        },
                      ),
                      AppSpacing.verticalSpaceSmall,
                      _WardDetailsButton(
                        AppStrings.assignments,
                        'document',
                        '3 new',
                        () {
                          // Navigator.of(context).pushNamed(
                          //   WardSubjectScreen.routeName,
                          //   arguments: {
                          //     'studentName': wardName,
                          //     'className': wardClass,
                          //   },
                          // );
                        },
                      ),
                      AppSpacing.verticalSpaceSmall,
                      _WardDetailsButton(
                        AppStrings.lectureTimeTable,
                        'document',
                        '',
                        () {},
                      ),
                      AppSpacing.verticalSpaceSmall,
                      _WardDetailsButton(
                        AppStrings.schoolEvents,
                        'document',
                        '',
                        () {
                          context.read<EventsBloc>().add(
                                EventsEvent.fetchEvents(
                                  parentSchoolId.toString(),
                                ),
                              );
                          Navigator.of(context)
                              .pushNamed(ClassEventsScreen.routeName);
                        },
                      ),
                      AppSpacing.verticalSpaceSmall,
                      _WardDetailsButton(
                        AppStrings.studyMaterials,
                        'document',
                        '',
                        () {},
                      ),
                      AppSpacing.verticalSpaceSmall,
                      _WardDetailsButton(
                        AppStrings.examTimeTable,
                        'document',
                        '',
                        () {},
                      ),
                      AppSpacing.verticalSpaceSmall,
                      _WardDetailsButton(
                        AppStrings.paymentHistory,
                        'document',
                        '',
                        () {},
                      ),
                      AppSpacing.verticalSpaceSmall,
                      _WardDetailsButton(
                        AppStrings.certificates,
                        'document',
                        '',
                        () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _WardDetailsButton extends StatelessWidget {
  const _WardDetailsButton(
    this.title,
    this.icon,
    this.trailing,
    this.onTap,
  );

  final String title;
  final String icon;
  final String? trailing;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: AppColors.primaryColor.withOpacity(.1),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: ListTile(
          leading: SvgPicture.asset(
            'assets/svg/$icon.svg',
            color: AppColors.primaryColor,
            height: 20,
          ),
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.blackColor,
                  fontSize: 12.fontSize,
                  fontWeight: FontWeight.w400,
                ),
          ),
          trailing: Text(
            trailing ?? '',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: 12.fontSize,
                  fontWeight: FontWeight.w400,
                ),
          ),
        ),
      ),
    );
  }
}

class _WardDetailsTopContainer extends StatelessWidget {
  const _WardDetailsTopContainer({
    required this.wardName,
    required this.wardSchool,
    required this.wardClass,
  });

  final String? wardName;
  final String? wardSchool;
  final String? wardClass;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.greyColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Image.asset('assets/png/back_button.png'),
            ),
          ),
          CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            radius: 50.fontSize,
            child: SvgPicture.asset(
              'assets/svg/people.svg',
            ),
          ),
          AppSpacing.verticalSpaceSmall,
          Text(
            wardName ?? '',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColors.blackColor,
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.w500,
                ),
          ),
          AppSpacing.verticalSpaceTiny,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svg/grad_cap.svg'),
              AppSpacing.horizontalSpaceTiny,
              Text(
                wardSchool ?? '',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.blackColor,
                      fontSize: 12.fontSize,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ],
          ),
          AppSpacing.verticalSpaceTiny,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svg/star.svg'),
              AppSpacing.horizontalSpaceTiny,
              Text(
                wardClass ?? '',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.blackColor,
                      fontSize: 12.fontSize,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
