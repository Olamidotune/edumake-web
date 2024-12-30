import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/students/student_model.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_classes_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/ward_big_card.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ParentWardScreen extends StatelessWidget {
  const ParentWardScreen({required this.students, super.key});
  final List<StudentModel> students;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${AppStrings.yourWards} (3)',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        AppSpacing.verticalSpaceMedium,
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: students.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context, rootNavigator: true).pushNamed(
                  WardDetailScreen.routeName,
                  arguments: {
                    'wardName': students[index].name,
                    'wardClass': students[index].classLevel,
                    'wardSchool': students[index].school,
                  },
                );
              },
              child: WardBigCard(
                wardName: students[index].name,
                wardClass: students[index].classLevel,
                wardSchool: students[index].school,
                wardNextEvent: students[index].upComingEvent,
                wardAttendance: students[index].attendance,
                feesAmount: students[index].feesAmount,
                color: AppColors.purpleColor,
                wardGender: students[index].gender,
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return AppSpacing.verticalSpaceMedium;
          },
        ),
      ],
    );
  }
}

class WardDetailScreen extends StatelessWidget {
  const WardDetailScreen({super.key});

  static const routeName = '/ward-details';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, String>;
    final wardName = args['wardName'];
    final wardClass = args['wardClass'];
    final wardSchool = args['wardSchool'];

    final scrollController = ScrollController();

    return Scaffold(
      body: SafeArea(
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
                    '13',
                    () {},
                  ),
                  AppSpacing.verticalSpaceSmall,
                  _WardDetailsButton(
                    AppStrings.assignments,
                    'document',
                    '3 new',
                    () {
                      Navigator.of(context).pushNamed(
                          IndvidualStudentAssignmentScreen.routeName,
                          arguments: {
                            'studentName': wardName,
                            'className': wardClass,
                          });
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
                    () {},
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
            radius: 40.fontSize,
            backgroundColor: AppColors.primaryColor.withOpacity(0.1),
            child: Icon(
              Icons.person,
              color: AppColors.primaryColor,
              size: 40.fontSize,
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
