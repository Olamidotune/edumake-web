import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/datum.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/get_subject_for_student/get_subject_for_student.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/get_subject_for_student/get_subject_for_student_datum.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/school_mgt/get_school_data.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/subjects/subjects_clients.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/get_school_data_model.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/get_subject_for_class/class_subject_datum.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/get_subject_for_class/fetch_class_subjects.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subjects_event.dart';
part 'subjects_state.dart';
part 'subjects_bloc.freezed.dart';

class SubjectsBloc extends Bloc<SubjectsEvent, SubjectsState> {
  SubjectsBloc() : super(const SubjectsState()) {
    on<_FetchSubjectForStudent>(_fetchSubjectForStudent);
    on<_FetchSubjectForStudentSuccessful>(_fetchSubjectForStudentSuccessful);
    on<_OnSelectedStudentId>(_onSelectedStudentId);
    on<_FetchSubjectForStudentFailed>(_fetchSubjectForStudentFailed);
    on<_FetchClassSubjects>(_fetchClassSubjects);
    on<_FetchClassSubjectsSuccessful>(_fetchClassSubjectsSuccessful);
    on<_FetchClassSubjectsFailed>(_fetchClassSubjectsFailed);
    on<_FetchSubjects>(_fetchSubjects);
    on<_FetchSubjectsSuccess>(_fetchSubjectSuccess);
    on<_FetchSubjectsFailed>(_fetchSubjectFailed);
    on<_OnSelectedSubjectNameChanged>(_onSelectedSubjectChanged);
  }

  ////////////////////////////////////////////////////////////////////////////////
  void _fetchClassSubjects(
    _FetchClassSubjects event,
    Emitter<SubjectsState> emit,
  ) async {
    if (state.fetchClassSubjectsStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(
      state.copyWith(
        fetchClassSubjectsStatus: FormzSubmissionStatus.inProgress,
      ),
    );

    try {
      final classSubjects = await locator<SubjectsClients>().fetchClassSubjects(
        await getAuthorization(),
        event.selectedClassId,
      );
      add(_FetchClassSubjectsSuccessful(classSubjects));
    } catch (error, trace) {
      logError(error, trace);
      if (error is DioError) {
        final message = error.response?.data?['message'];
        add(
          _FetchClassSubjectsFailed(
            message?.toString() ?? 'An unexpected error occurred',
          ),
        );
      } else {
        add(
          const _FetchClassSubjectsFailed(
            'An unexpected error occurred',
          ),
        );
      }
    }
  }

  void _fetchClassSubjectsSuccessful(
    _FetchClassSubjectsSuccessful event,
    Emitter<SubjectsState> emit,
  ) {
    emit(
      state.copyWith(
        fetchClassSubjectsStatus: FormzSubmissionStatus.success,
        fetchClassSubjects: event.fetchClassSubjects,
        fetchClassSubjectsDatum: event.fetchClassSubjects.data,
      ),
    );
  }

  void _fetchClassSubjectsFailed(
    _FetchClassSubjectsFailed event,
    Emitter<SubjectsState> emit,
  ) {
    emit(
      state.copyWith(
        fetchClassSubjectsStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message ?? 'An error occurred',
      ),
    );
  }

/////////////////////////////////////////////////////////////////////////////////
  void _fetchSubjectForStudent(
    _FetchSubjectForStudent event,
    Emitter<SubjectsState> emit,
  ) async {
    emit(
      state.copyWith(
        fetchSubjectForStudentStatus: FormzSubmissionStatus.inProgress,
      ),
    );

    try {
      final subjects = await locator<SubjectsClients>()
          .getSubjectForStudent(await getAuthorization(), event.studentId);
      add(_FetchSubjectForStudentSuccessful(subjects));
    } catch (error, trace) {
      logError(error, trace);
      if (error is DioError) {
        final message = error.response?.data?['message'];
        add(
          _FetchSubjectForStudentFailed(
            message?.toString() ?? 'An unexpected error occurred',
          ),
        );
      } else {
        add(
          const _FetchSubjectForStudentFailed(
            'An unexpected error occurred',
          ),
        );
      }
    }
  }

  void _fetchSubjectForStudentSuccessful(
    _FetchSubjectForStudentSuccessful event,
    Emitter<SubjectsState> emit,
  ) {
    emit(
      state.copyWith(
        fetchSubjectForStudentStatus: FormzSubmissionStatus.success,
        getSubjectForStudentDatum: event.getSubjectForStudent.data,
        getSubjectForStudent: event.getSubjectForStudent,
      ),
    );
  }

  void _fetchSubjectForStudentFailed(
    _FetchSubjectForStudentFailed event,
    Emitter<SubjectsState> emit,
  ) {
    emit(
      state.copyWith(
        fetchSubjectForStudentStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message ?? 'An error occurred',
      ),
    );
  }

  //////////////////////////////////////////////////////////////////////////////
  /// Subjects
  //////////////////////////////////////////////////////////////////////////////
  void _fetchSubjects(
    _FetchSubjects event,
    Emitter<SubjectsState> emit,
  ) async {
    emit(
      state.copyWith(
        fetchSubjectStatus: FormzSubmissionStatus.inProgress,
      ),
    );

    try {
      final result = await locator<GetSchoolDataClient>().getSubjects(
        await getAuthorization(),
        await getSchoolID(),
        10,
        state.totalSubjectCursor, // Use the current cursor from the state
      );

      if (result.data.isNotEmpty) {
        // Append new data to the existing list
        final updatedSubjects = List<Datum>.from(state.subjects)
          ..addAll(result.data);
        emit(
          state.copyWith(
            subjects: updatedSubjects,
            totalSubjectCursor:
                result.cursor, // Update the cursor for the next fetch
            fetchSubjectStatus: FormzSubmissionStatus.success,
          ),
        );
      } else {
        emit(
          state.copyWith(
            fetchSubjectStatus: FormzSubmissionStatus.success,
          ),
        );
      }
    } catch (error, trace) {
      logError(error, trace);
      onError(error, trace);
      if (error is DioError && error.response?.data['message'] != null) {
        add(_FetchSubjectsFailed(error.response?.data['message'] as String?));
      } else {
        add(const _FetchSubjectsFailed('An unexpected error occurred'));
      }
    }
  }

  void _fetchSubjectSuccess(
    _FetchSubjectsSuccess event,
    Emitter<SubjectsState> emit,
  ) {
    emit(
      state.copyWith(
        fetchSubjectStatus: FormzSubmissionStatus.success,
        getSchoolDataModel: event.getSchoolDataModel,
        subjectData: event.getSchoolDataModel.data,
      ),
    );
  }

  void _onSelectedSubjectChanged(
    _OnSelectedSubjectNameChanged event,
    Emitter<SubjectsState> emit,
  ) {
    emit(state.copyWith(selectedSubject: event.subjectNameKey));
  }

  void _fetchSubjectFailed(
    _FetchSubjectsFailed event,
    Emitter<SubjectsState> emit,
  ) {
    emit(
      state.copyWith(
        fetchSubjectStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message ?? 'An error occurred',
      ),
    );
  }

  void _onSelectedStudentId(
    _OnSelectedStudentId event,
    Emitter<SubjectsState> emit,
  ) {
    emit(
      state.copyWith(selectedStudentId: event.onSelectedStudentId),
    );
  }
}
