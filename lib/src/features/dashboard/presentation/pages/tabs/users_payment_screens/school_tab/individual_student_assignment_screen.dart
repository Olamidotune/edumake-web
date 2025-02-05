import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/school_tab/assignment_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
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
                child: BlocBuilder<GetSchoolDataBloc, GetSchoolDataState>(
                  builder: (context, state) {
                    // Show loading indicator if data is being fetched
                    if (state.fetchSubjectStatus ==
                        FormzSubmissionStatus.inProgress) {
                      return const Center(
                        child: SpinKitPulsingGrid(
                          color: AppColors.primaryColor,
                          size: 30,
                        ),
                      );
                    }

                    // Show empty state if no data is available
                    if (state.subjectData == null ||
                        state.subjectData!.isEmpty) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              height: AppSpacing.verticalValueSpaceLarge * 6),
                          Image.asset(
                            'assets/png/empty.png',
                            height: 150,
                          ),
                          Text(
                            'No Data Available',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize:
                                          20, // Assuming 20 is a valid font size
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primaryTextColor,
                                    ),
                          ),
                          AppSpacing.verticalSpaceSmall,
                          Text(
                            'Add a subject or subjects by clicking the + button above.',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize:
                                      14, // Assuming 14 is a valid font size
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.secondaryTexColor,
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      );
                    }

                    // Show the list of subjects
                    return SizedBox(
                      height: MediaQuery.of(context).size.height <
                              kMinSupportedHeight
                          ? 450.height
                          : 510.height,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: state.subjects.length +
                            (state.fetchSubjectStatus ==
                                    FormzSubmissionStatus.inProgress
                                ? 1
                                : 0),
                        controller: scrollController,
                        physics: const AlwaysScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return AppSpacing.verticalSpaceMedium;
                        },
                        itemBuilder: (context, index) {
                          // Check if this is the last item and we're loading
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
                          final subjectData = state.subjects[index];
                          return GestureDetector(
                            onTap: () {
                              // Handle onTap action here
                              context.read<GetSchoolDataBloc>().add(
                                    GetSchoolDataEvent
                                        .onSelectedSubjectNameChanged(
                                      subjectData.name,
                                    ),
                                  );
                              Navigator.of(
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
                            child: ClassesListTileContainer(
                              isProfilePictureEnabled: false,
                              title: subjectData.name.toUpperCase(),
                            ),
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
      context
          .read<GetSchoolDataBloc>()
          .add(const GetSchoolDataEvent.fetchSubjects());
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
