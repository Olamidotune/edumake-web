// ignore_for_file: unused_local_variable, use_if_null_to_convert_nulls_to_bools

import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/subjects/subjects_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/parent_tab/subjects/individual_subject_details.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';

class WardSubjectScreen extends StatefulWidget {
  const WardSubjectScreen({super.key});

  static const String routeName = '/WardSubjectScreen';

  @override
  State<WardSubjectScreen> createState() => _WardSubjectScreenState();
}

class _WardSubjectScreenState extends State<WardSubjectScreen> {
  @override
  void initState() {
    super.initState();
    scrollController.addListener(_loadMoreClasses);
  }

  bool isLoading = false;
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final studentName = args['studentName'];
    final className = args['className'];
    final schoolName = args['schoolName'];
    final wardId = args['wardId'];
    final classId = args['wardClassId'];
    final schoolId = args['wardSchoolId'];

    return Scaffold(
      appBar: CustomAppBar(
        title: studentName.toString(),
        subtitle: '$schoolName. ($className)',
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.subjectCourses,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 24.fontSize,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor,
                    ),
              ),
              AppSpacing.verticalSpaceMedium,
              // Assignments
              CustomRawScroller(
                scrollController: scrollController,
                child: BlocBuilder<SubjectsBloc, SubjectsState>(
                  builder: (context, state) {
                    if (state.fetchSubjectForStudentStatus ==
                        FormzSubmissionStatus.inProgress) {
                      return const Center(
                        child: SpinKitPulsingGrid(
                          color: AppColors.primaryColor,
                          size: 30,
                        ),
                      );
                    }

                    if (state.getSubjectForStudent?.data.isEmpty ?? false) {
                      return const NoDataAvailable(
                        message:
                            'No subjects are currently associated with this student..',
                        height: 6,
                      );
                    }
                    return SizedBox(
                      height: MediaQuery.of(context).size.height <
                              kMinSupportedHeight
                          ? 450.height
                          : 510.height,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: state.getSubjectForStudent!.data.length +
                            (state.fetchSubjectForStudentStatus ==
                                    FormzSubmissionStatus.inProgress
                                ? 1
                                : 0),
                        controller: scrollController,
                        physics: const AlwaysScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return AppSpacing.verticalSpaceMedium;
                        },
                        itemBuilder: (context, index) {
                          if (index == state.subjects.length &&
                              state.fetchSubjectStatus ==
                                  FormzSubmissionStatus.inProgress) {
                            return const Center(
                              child: Padding(
                                padding: EdgeInsets.all(16),
                                child: SpinKitPulsingGrid(
                                  color: AppColors.primaryColor,
                                  size: 30,
                                ),
                              ),
                            );
                          }
                          // Now we know index is within bounds of classesData
                          final subjectData =
                              state.getSubjectForStudent?.data[index];
                          return ClassesListTileContainer(
                            isProfilePictureEnabled: false,
                            title: subjectData?.name.toUpperCase() ?? '',
                            onTap: () {
                              context.read<SubjectsBloc>().add(
                                    SubjectsEvent.onSelectedSubjectNameChanged(
                                      subjectData?.name,
                                    ),
                                  );
                              Navigator.of(
                                context,
                              ).pushNamed(
                                IndividualSubjectDetails.routeName,
                                arguments: {
                                  'schoolName': schoolName,
                                  'className': className,
                                  'studentName': studentName,
                                  'subjectId': subjectData?.id,
                                  'subjectName': subjectData?.name,
                                  'wardId': wardId,
                                  'classId': classId,
                                  'schoolId': schoolId
                                },
                              );
                            },
                          );
                        },
                      ),
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

  void _loadMoreClasses() {
    if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent &&
        context.read<GetSchoolDataBloc>().state.totalClassCursor !=
            context
                .read<GetSchoolDataBloc>()
                .state
                .getSchoolDataModel
                ?.cursor) {
      context.read<SubjectsBloc>().add(const SubjectsEvent.fetchSubjects());
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
