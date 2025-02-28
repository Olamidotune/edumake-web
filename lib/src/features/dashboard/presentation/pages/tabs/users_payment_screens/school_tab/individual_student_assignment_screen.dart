import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/subjects/subjects_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/curriculum/curriculum_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/school_tab/assignment_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';

class IndividualStudentAssignmentScreen extends StatefulWidget {
  const IndividualStudentAssignmentScreen({super.key});

  static const String routeName = '/individual-student-assignment';

  @override
  State<IndividualStudentAssignmentScreen> createState() =>
      _IndividualStudentAssignmentScreenState();
}

class _IndividualStudentAssignmentScreenState
    extends State<IndividualStudentAssignmentScreen> {
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
    final source = args['source'];

    return Scaffold(
      appBar: CustomAppBar(
        title: source == 'curriculum'
            ? schoolName.toString()
            : studentName.toString(),
        subtitle: source == 'curriculum'
            ? className.toString()
            : '$schoolName. ($className,)',
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
                    // Show loading indicator if data is being fetched
                    if (source == 'curriculum'
                        ? state.fetchClassSubjectsStatus ==
                            FormzSubmissionStatus.inProgress
                        : state.fetchSubjectForStudentStatus ==
                            FormzSubmissionStatus.inProgress) {
                      return const Center(
                        child: SpinKitPulsingGrid(
                          color: AppColors.primaryColor,
                          size: 30,
                        ),
                      );
                    }
                    // Show empty state if no data is available
                    if (state.getSubjectForStudentDatum?.isEmpty ?? true) {
                      // Show empty state UI
                      return NoDataAvailable(
                        message: 'No subject(s) available for $studentName',
                        height: 7,
                      );
                    }
                    if (source == 'curriculum'
                        ? state.fetchClassSubjectsStatus ==
                            FormzSubmissionStatus.failure
                        : state.fetchSubjectForStudentStatus ==
                            FormzSubmissionStatus.failure) {
                      return const NoDataAvailable(
                        message:
                            'Something went wrong. Try again or contact support.',
                        height: 8,
                      );
                    }

                    return SizedBox(
                      height: MediaQuery.of(context).size.height <
                              kMinSupportedHeight
                          ? 450.height
                          : 510.height,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: source == 'curriculum'
                            ? state.fetchClassSubjectsDatum?.length ?? 0
                            : state.getSubjectForStudentDatum?.length ?? 0,
                        controller: scrollController,
                        physics: const AlwaysScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return AppSpacing.verticalSpaceMedium;
                        },
                        itemBuilder: (context, index) {
                          // Check if this is the last item and we're loading
                          if (source == 'curriculum'
                              ? index ==
                                      state.fetchClassSubjectsDatum?.length &&
                                  state.fetchClassSubjectsStatus ==
                                      FormzSubmissionStatus.inProgress
                              : index ==
                                      state.getSubjectForStudentDatum?.length &&
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

                          final subjectData =
                              state.fetchClassSubjectsDatum?[index];
                          return ClassesListTileContainer(
                            isProfilePictureEnabled: false,
                            title: subjectData?.name.toUpperCase() ?? '',
                            onTap: () {
                              // Handle onTap action here
                              context.read<SubjectsBloc>().add(
                                    SubjectsEvent.onSelectedSubjectNameChanged(
                                      subjectData?.name,
                                    ),
                                  );
                              source == 'curriculum'
                                  ? Navigator.of(
                                      context,
                                    ).pushNamed(
                                      CurriculumScreen.routeName,
                                    )
                                  : Navigator.of(
                                      context,
                                    ).pushNamed(
                                      AssignmentScreen.routeName,
                                      arguments: {
                                        'schoolName': schoolName,
                                        'className': className,
                                        'studentName': studentName
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
