import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/teachers_list_tile_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SchoolTeacherScreen extends StatelessWidget {
  const SchoolTeacherScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final teachers = <String>[
      'Teacher 1',
      'Teacher 2',
      'Teacher 3',
      'Teacher 4',
      'Teacher 5',
      'Teacher 6',
      'Teacher 7',
      'Teacher 8',
      'Teacher 9',
      'Teacher 10',
    ];

    final subjects = <String>[
      'Mathematics',
      'English',
      'Physics',
      'Chemistry',
      'Biology',
      'Agricultural Science',
      'Economics',
      'Government',
      'Civic Education',
      'Computer Science',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.teachers,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 24.fontSize,
                fontWeight: FontWeight.w400,
                color: AppColors.blackColor,
              ),
        ),
        AppSpacing.verticalSpaceSmall,
        Text(
          AppStrings.exploreTheListofTeacherYouHaveAddedSoFar,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 12.fontSize,
                fontWeight: FontWeight.w300,
                color: AppColors.blackColor,
              ),
        ),
        AppSpacing.verticalSpaceMedium,
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context, rootNavigator: true).pushNamed(
                  TeacherDetailsScreen.routeName,
                  arguments: {
                    'teacher': teachers[index],
                    'subject': subjects[index],
                  },
                );
                debugPrint('Teacher ${teachers[index]}');
              },
              child: TeachersListTileContainer(
                teachers: teachers[index],
                subjects: subjects[index],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return AppSpacing.verticalSpaceMedium;
          },
          itemCount: 10,
        ),
        AppSpacing.verticalSpaceMassive,
        AppSpacing.verticalSpaceMassive,
      ],
    );
  }
}

class TeacherDetailsScreen extends StatelessWidget {
  const TeacherDetailsScreen({super.key});

  static const String routeName = 'teacher_details_screen';

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final teacher = args['teacher'];
    final subject = args['subject'];

    return Scaffold(
      appBar: CustomAppBar(
        title: teacher.toString(),
        subtitle: subject.toString(),
      ),
      body: SafeArea(
        child: RawScrollbar(
          controller: scrollController,
          thumbColor: AppColors.primaryColor.withOpacity(0.4),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          padding: const EdgeInsets.only(
            left: 10,
            right: 5,
          ),
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            child: SingleChildScrollView(
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppSpacing.verticalSpaceLarge,
                  Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: AppColors.primaryColor.withOpacity(0.1),
                      child: Icon(
                        Icons.person,
                        color: AppColors.primaryColor,
                        size: 60.fontSize,
                      ),
                    ),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Center(
                    child: Text(
                      teacher.toString(),
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 20.fontSize,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor,
                          ),
                    ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  //Change this subject to the teacher email
                  Center(
                    child: Text(
                      subject.toString(),
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16.fontSize,
                            color: AppColors.primaryTextColor,
                          ),
                    ),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.assignedTo,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 16.fontSize,
                              fontWeight: FontWeight.w300,
                              color: AppColors.primaryTextColor,
                            ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.greyColor.withOpacity(0.1),
                        ),
                        child: SvgPicture.asset(
                          'assets/svg/edit.svg',
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Container(
                    padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.primaryColor.withOpacity(0.1),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                AppStrings.classes,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontSize: 15.fontSize,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.primaryTextColor,
                                    ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'JSS1A, JSS1B, JSS1C, JSS2A, JSS2B, JSS2C',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontSize: 15.fontSize,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.blackColor,
                                    ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        AppSpacing.verticalSpaceMedium,
                        const Divider(
                          color: AppColors.greyColor,
                          thickness: 1,
                        ),
                        AppSpacing.verticalSpaceMedium,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppStrings.subjects,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 15.fontSize,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primaryTextColor,
                                  ),
                            ),
                            Text(
                              'Mathematics',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 15.fontSize,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.blackColor,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  AppSpacing.verticalSpaceLarge,
                  Text(
                    AppStrings.others,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 16.fontSize,
                          fontWeight: FontWeight.w300,
                          color: AppColors.primaryTextColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.primaryColor.withOpacity(0.1),
                    ),
                    child: Column(
                      children: [
                        _TeacherOtherSectionListTile(
                          title: AppStrings.assignments,
                          count: '4',
                          onTap: () {},
                        ),
                        AppSpacing.verticalSpaceSmall,
                        Divider(
                          color: AppColors.greyColor.withOpacity(0.3),
                          thickness: 1,
                        ),
                        AppSpacing.verticalSpaceSmall,
                        _TeacherOtherSectionListTile(
                          title: AppStrings.examResults,
                          count: '95%',
                          onTap: () {},
                        ),
                        AppSpacing.verticalSpaceSmall,
                        Divider(
                          color: AppColors.greyColor.withOpacity(0.3),
                          thickness: 1,
                        ),
                        AppSpacing.verticalSpaceSmall,
                        _TeacherOtherSectionListTile(
                          title: AppStrings.teachersNote,
                          count: '12',
                          onTap: () {},
                        ),
                      ],
                    ),
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

class _TeacherOtherSectionListTile extends StatelessWidget {
  const _TeacherOtherSectionListTile({
    required this.title,
    required this.onTap,
    required this.count,
  });

  final String title;
  final String count;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: title,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 13.fontSize,
                        fontWeight: FontWeight.w300,
                        color: AppColors.primaryTextColor,
                        fontFamily: 'HelveticaNeueRounded',
                      ),
                ),
                TextSpan(
                  text: ' ($count)',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 13.fontSize,
                        fontWeight: FontWeight.w300,
                        color: AppColors.primaryColor,
                        fontFamily: 'HelveticaNeueRounded',
                      ),
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            'assets/svg/arrow_right.svg',
            color: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
