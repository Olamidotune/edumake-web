// ignore_for_file: unused_import

import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/students/student_model.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/parent/get_wards/get_wards_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/announcement_card.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/teachers_note.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/your_ward_widget.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

class ParentDashboard extends StatefulWidget {
  const ParentDashboard({
    super.key,
  });

  @override
  State<ParentDashboard> createState() => _ParentDashboardState();
}

class _ParentDashboardState extends State<ParentDashboard> {
  @override
  void initState() {
    super.initState();
    context.read<GetWardsBloc>().add(const GetWardsEvent.fetchWards());
  }

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      BlocBuilder<GetWardsBloc, GetWardsState>(
        builder: (context, state) {
          if (state.getWardStatus == FormzSubmissionStatus.inProgress) {
            return SizedBox(
              height: 800,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const CustomShimmer();
                },
                itemCount: 10,
              ),
            );
          }
          if (state.searchResponse?.data.isEmpty ?? true) {
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
            children: [
              Text(
                'Your Ward',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 16.fontSize,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blackColor,
                    ),
              ),
              AppSpacing.verticalSpaceMedium,
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const YourWardCard(
                      wardName: 'student.name,',
                      schoolName: 'student.school,',
                      wardClass: 'student.classLevel,',
                      profilePic: 'student.name.substring(1),',
                      assignmentNum: 'student.assignment,',
                      scores: 'student.deviceToken',
                      feesPaid: true);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return AppSpacing.verticalSpaceMedium;
                },
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'More',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              AppSpacing.verticalSpaceMedium,
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Upcoming Events',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor,
                      ),
                ),
              ),
              AppSpacing.verticalSpaceMedium,
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height <
                              kMinSupportedHeight
                          ? 250.height
                          : 215.height,
                      constraints: BoxConstraints(
                        maxWidth: 180.width,
                      ),
                      padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                      decoration: BoxDecoration(
                        color: AppColors.purpleColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.greyColor.withOpacity(0.7),
                            blurRadius: 10,
                            spreadRadius: 1,
                            offset: const Offset(1, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Image.asset(
                              'assets/png/girl running.png',
                              height: 110.h,
                              width: double.infinity,
                            ),
                          ),
                          AppSpacing.verticalSpaceMedium,
                          Expanded(
                            flex: 6,
                            child: Text(
                              'Students will have the opportunity to participate in various sports and activities. We encourage everyone to come out and support our young athletes!',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 10.fontSize,
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 6,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        AnnouncementCard(
                          title: 'Sports Day',
                          description:
                              'School general continuous assessment, to hold for a week starting from Monday, 13th feb 2023.',
                          color: AppColors.redColor.withOpacity(0.3),
                        ),
                        AppSpacing.verticalSpaceMedium,
                        AnnouncementCard(
                          title: 'Cutural Day',
                          description:
                              'This event will showcase the rich diversity of our school through performances, food, and displays representing various cultures...',
                          color: AppColors.greenColor.withOpacity(0.3),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              AppSpacing.verticalSpaceMedium,
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'View all events',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              AppSpacing.verticalSpaceMedium,
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Teacher's Note (Recent)",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor,
                      ),
                ),
              ),
              AppSpacing.verticalSpaceMedium,
              const TeachersNote(
                description:
                    'I wanted to bring to your attention that Maryann has been consistently falling asleep during class. This is affecting their participation and ability to keep up with the class. Please ensure they get enough rest at home.',
                date: 'Today 4:20',
                teacher: 'Deborah Ani',
                subject: 'Social',
                wardName: 'Samuel Egundeyi',
              ),
            ],
          );
        },
      ),
    ]);
  }
}
