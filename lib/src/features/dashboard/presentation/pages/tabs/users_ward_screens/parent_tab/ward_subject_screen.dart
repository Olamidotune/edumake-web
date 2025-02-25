import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/classes_events_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/school_tab/assignment_screen.dart';
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
                              context.read<GetSchoolDataBloc>().add(
                                    GetSchoolDataEvent
                                        .onSelectedSubjectNameChanged(
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

class IndividualSubjectDetails extends StatelessWidget {
  const IndividualSubjectDetails({super.key});

  static const String routeName = '/individual-subject-screen';

  @override
  Widget build(BuildContext context) {
    final args =
        // ignore: cast_nullable_to_non_nullable
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final schoolName = args['schoolName'];
    final className = args['className'];
    final studentName = args['studentName'];
    final subjectId = args['subjectId'];
    final subjectName = args['subjectName'];

    final scrollController = ScrollController();
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: CustomRawScroller(
          scrollController: scrollController,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            controller: scrollController,
            child: Padding(
              padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor.withOpacity(0.1),
                    ),
                    margin: const EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    height: 250,
                    child: Image.asset(
                      'assets/png/event.png',
                    ),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    title: AppStrings.assignments,
                    onTap: () {
                      context.read<GetSchoolDataBloc>().add(
                            GetSchoolDataEvent.onSelectedSubjectNameChanged(
                                subjectName.toString()),
                          );
                      Navigator.of(
                        context,
                      ).pushNamed(
                        //change to parent assignment screen
                        AssignmentScreen.routeName,
                        arguments: {
                          'schoolName': schoolName,
                          'className': className,
                          'studentName': studentName,
                          'subjectId': subjectId,
                          'subjectName': subjectName,
                        },
                      );
                    },
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    title: AppStrings.curriculumSchemeOfWork,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    title: 'Learning Materials',
                  ),
                  AppSpacing.verticalSpaceMedium,
                  ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    title: 'Test/Exam Results',
                    onTap: () {},
                  ),
                  AppSpacing.verticalSpaceMedium,
                  ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    title: AppStrings.events,
                    onTap: () {
                      //Can't get event by student...
                      Navigator.of(context)
                          .pushNamed(ClassEventsScreen.routeName);
                    },
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    title: AppStrings.analysis,
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

class WardTestScreen extends StatelessWidget {
  const WardTestScreen({super.key});

  static const String routeName = '/ward-test-screen';

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
