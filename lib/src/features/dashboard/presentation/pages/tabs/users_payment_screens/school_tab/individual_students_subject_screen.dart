import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/test/test_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/test_exams/exam_result_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/test_exams/test_result_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';

class IndividualStudentSubjectScreen extends StatelessWidget {
  const IndividualStudentSubjectScreen({super.key});

  static const String routeName = 'individual_student_subject';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final studentName = args['studentName'];
    final className = args['className'];
    final schoolName = args['schoolName'];
    final classId = args['classId'];
    final studentId = args['studentId'];
    final source = args['source'];

    final scrollController = ScrollController();

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
              RichText(
                text: TextSpan(
                  text: 'These are the subjects/courses available for ',
                  style: TextStyle(
                    fontSize: 14.fontSize,
                    color: AppColors.blackColor,
                  ),
                  children: [
                    TextSpan(
                      text: '$studentName.',
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' Tap on any to view, edit or add ${source == 'test' ? 'test' : 'exams'} results.',
                      style: TextStyle(
                        fontSize: 14.fontSize,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.verticalSpaceMedium,
              CustomRawScroller(
                scrollController: scrollController,
                child: BlocBuilder<GetSchoolDataBloc, GetSchoolDataState>(
                  builder: (context, state) {
                    if (state.fetchSubjectForStudentStatus ==
                        FormzSubmissionStatus.inProgress) {
                      return const Center(
                        child: SpinKitPulsingGrid(
                          color: AppColors.primaryColor,
                        ),
                      );
                    }
                    if (state.fetchSubjectForStudentStatus ==
                        FormzSubmissionStatus.failure) {
                      return NoDataAvailable(
                        message: 'Something went wrong',
                        height: 5.height,
                      );
                    }
                    if (state.fetchSubjectForStudentStatus ==
                                FormzSubmissionStatus.success &&
                            state.getSubjectForStudentDatum == null ||
                        state.getSubjectForStudentDatum?.length == 0) {
                      return NoDataAvailable(
                        message:
                            'No subject/courses available for this student',
                        height: 5.height,
                      );
                    }
                    return SizedBox(
                      height: MediaQuery.of(context).size.height <
                              kMinSupportedHeight
                          ? 450.height
                          : 510.height,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: state.getSubjectForStudentDatum?.length ?? 0,
                        controller: scrollController,
                        physics: const AlwaysScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return AppSpacing.verticalSpaceMedium;
                        },
                        itemBuilder: (context, index) {
                          final subjectData =
                              state.getSubjectForStudentDatum?[index];
                          return GestureDetector(
                            onTap: () {
                              source == 'test'
                                  ? context.read<TestBloc>().add(
                                        TestEvent.fetchSubjectTestResults(
                                          subjectData?.id ?? '',
                                        ),
                                      )
                                  : context.read<TestBloc>().add(
                                        TestEvent.fetchExamResults(
                                          studentId.toString(),
                                          classId.toString(),
                                          subjectData?.id ?? '',
                                        ),
                                      );
                              context.read<GetSchoolDataBloc>().add(
                                    GetSchoolDataEvent
                                        .onSelectedSubjectNameChanged(
                                      subjectData?.name,
                                    ),
                                  );
                              source == 'test'
                                  ? Navigator.of(
                                      context,
                                    ).pushNamed(
                                      TestResultsScreen.routeName,
                                      arguments: {
                                        'studentName': studentName,
                                        'className': className,
                                        'schoolName': schoolName,
                                        'classId': classId,
                                        'studentId': studentId,
                                        'subjectName': subjectData?.name,
                                        'subjectId': subjectData?.id,
                                        'source': source,
                                      },
                                    )
                                  : Navigator.of(
                                      context,
                                    ).pushNamed(
                                      ExamResultScreen.routeName,
                                      arguments: {
                                        'studentName': studentName,
                                        'className': className,
                                        'schoolName': schoolName,
                                        'classId': classId,
                                        'studentId': studentId,
                                        'subjectName': subjectData?.name,
                                        'subjectId': subjectData?.id,
                                        'source': source,
                                      },
                                    );
                            },
                            child: ClassesListTileContainer(
                              isProfilePictureEnabled: false,
                              title: subjectData?.name.toUpperCase() ?? '',
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
}
