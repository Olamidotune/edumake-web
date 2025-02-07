import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/student_details_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

class ClassStudentsScreen extends StatelessWidget {
  const ClassStudentsScreen({super.key});

  static const String routeName = '/class-students';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final className = args['className'];

    final scrollController = ScrollController();

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: CustomRawScroller(
          scrollController: scrollController,
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              child: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 10,
                            child: Text(
                              '$className ${AppStrings.students} ',
                              style: TextStyle(
                                fontSize: 24.fontSize,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackColor,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Expanded(
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
                              ),
                            ),
                          ),
                        ],
                      ),
                      AppSpacing.verticalSpaceMedium,
                      // Students
                      BlocBuilder<GetSchoolDataBloc, GetSchoolDataState>(
                        builder: (context, schoolDataState) {
                          final students =
                              schoolDataState.getStudentsDatum ?? [];
                          return ListView.separated(
                            itemCount: students.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final student = students[index];
                              if (schoolDataState.fetchStudentsStatus ==
                                  FormzSubmissionStatus.inProgress) {
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
                              if (schoolDataState.getStudentsDatum == null ||
                                  schoolDataState.getStudentsDatum!.isEmpty) {
                                return Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height:
                                            AppSpacing.verticalValueSpaceLarge *
                                                6,
                                      ),
                                      Image.asset(
                                        'assets/png/empty.png',
                                        height: 150,
                                      ),
                                      Text(
                                        'No Data Available',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                              fontSize:
                                                  20, // Assuming 20 is a valid font size
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.primaryTextColor,
                                            ),
                                      ),
                                      AppSpacing.verticalSpaceSmall,
                                      Text(
                                        'Add a class or classes by clicking the + button above.',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              fontSize:
                                                  14, // Assuming 14 is a valid font size
                                              fontWeight: FontWeight.w400,
                                              color:
                                                  AppColors.secondaryTexColor,
                                            ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                );
                              }
                              return ClassesListTileContainer(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    StudentDetailsScreen.routeName,
                                    arguments: {
                                      'className': className,
                                      'studentName': student.name,
                                      'schoolName': context
                                          .read<AuthBloc>()
                                          .state
                                          .school
                                          ?.schoolName,
                                    },
                                  );
                                },
                                isProfilePictureEnabled: true,
                                title: student.name,
                                subTitle: context
                                        .read<AuthBloc>()
                                        .state
                                        .school
                                        ?.schoolName ??
                                    '',
                              );
                            },
                            separatorBuilder: (context, index) {
                              return AppSpacing.verticalSpaceMedium;
                            },
                          );
                        },
                      ),
                      AppSpacing.verticalSpaceMassive,
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
