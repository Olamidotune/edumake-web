import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/datum.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/get_classes/get_students.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/get_classes/get_students_datum.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/get_subject_for_student/get_subject_for_student.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/get_subject_for_student/get_subject_for_student_datum.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/school_mgt/get_school_data.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/get_school_data_model.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_school_data_event.dart';
part 'get_school_data_state.dart';
part 'get_school_data_bloc.freezed.dart';

class GetSchoolDataBloc extends Bloc<GetSchoolDataEvent, GetSchoolDataState> {
  GetSchoolDataBloc() : super(const GetSchoolDataState()) {
    on<_Init>(_init);
    on<_FetchClasses>(_fetchPaginatedClasses);
    on<_FetchClassesSuccess>(_fetchClassesSuccess);
    on<_FetchClassesFailed>(_fetchClassesFailed);
    on<_OnSelectedClassNameChanged>(_onSelectedClassNameChanged);
    on<_FetchSubjects>(_fetchSubjects);
    on<_FetchSubjectsSuccess>(_fetchSubjectSuccess);
    on<_FetchSubjectsFailed>(_fetchSubjectFailed);
    on<_OnSelectedSubjectNameChanged>(_onSelectedSubjectChanged);
    on<_FetchStudents>(_fetchStudents);
    on<_FetchStudentsSuccessful>(_fetchStudentsSuccessful);
    on<_FetchSubjectForStudent>(_fetchSubjectForStudent);
    on<_FetchSubjectForStudentSuccessful>(_fetchSubjectForStudentSuccessful);
    on<_OnSelectedStudentId>(_onSelectedStudentId);
    on<_FetchSubjectForStudentFailed>(_fetchSubjectForStudentFailed);
    on<_FetchStudentsFailed>(_fetchStudentsFailed);
    on<_ErrorMessage>(_errorMessage);

    add(const _Init());
  }

  void _init(_Init event, Emitter<GetSchoolDataState> emit) async {
    try {
      final result = await locator<GetSchoolDataClient>().getClasses(
        await getAuthorization(),
        await getSchoolID(),
        10000,
        null,
      );
      add(
        _FetchClassesSuccess(
          result,
        ),
      );
    } catch (error, trace) {
      onError(error, trace);
      if (error is DioError && error.response?.data['message'] != null) {
        add(_FetchClassesFailed(error.response?.data['message'] as String?));
      } else {
        add(const _FetchClassesFailed('An unexpected error occurred'));
      }
    }

    try {
      final subjects = await locator<GetSchoolDataClient>().getSubjects(
        await getAuthorization(),
        await getSchoolID(),
        10000,
        null, // Use the current cursor from the state
      );
      add(_FetchSubjectsSuccess(subjects));
    } catch (error, trace) {
      onError(error, trace);
      if (error is DioError && error.response?.data['message'] != null) {
        add(_FetchSubjectsFailed(error.response?.data['message'] as String?));
      } else {
        add(const _FetchSubjectsFailed('An unexpected error occurred'));
      }
    }
  }

  void _fetchPaginatedClasses(
    _FetchClasses event,
    Emitter<GetSchoolDataState> emit,
  ) async {
    emit(
      state.copyWith(
        fetchClassesStatus: FormzSubmissionStatus.inProgress,
      ),
    );

    try {
      final result = await locator<GetSchoolDataClient>().getClasses(
        await getAuthorization(),
        await getSchoolID(),
        10,
        state.totalClassCursor, // Use the current cursor from the state
      );

      if (result.data.isNotEmpty) {
        // Append new data to the existing list
        final updatedClasses = List<Datum>.from(state.classes)
          ..addAll(result.data);

        emit(
          state.copyWith(
            classes: updatedClasses,
            totalClassCursor:
                result.cursor, // Update the cursor for the next fetch
            fetchClassesStatus: FormzSubmissionStatus.success,
          ),
        );
      } else {
        emit(
          state.copyWith(
            fetchClassesStatus: FormzSubmissionStatus.success,
          ),
        );
      }
    } catch (error, trace) {
      onError(error, trace);
      if (error is DioError && error.response?.data['message'] != null) {
        add(_FetchClassesFailed(error.response?.data['message'] as String?));
      } else {
        add(const _FetchClassesFailed('An unexpected error occurred'));
      }
    }
  }

  void _fetchClassesSuccess(
    _FetchClassesSuccess event,
    Emitter<GetSchoolDataState> emit,
  ) {
    emit(
      state.copyWith(
        fetchClassesStatus: FormzSubmissionStatus.success,
        getSchoolDataModel: event.getSchoolDataModel,
        classesData: event.getSchoolDataModel.data,
      ),
    );
  }

  void _onSelectedClassNameChanged(
    _OnSelectedClassNameChanged event,
    Emitter<GetSchoolDataState> emit,
  ) {
    emit(state.copyWith(selectedClassName: event.classNameKey));
  }

  void _fetchClassesFailed(
    _FetchClassesFailed event,
    Emitter<GetSchoolDataState> emit,
  ) {
    emit(
      state.copyWith(
        fetchClassesStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message ?? 'An error occurred',
      ),
    );
  }

  //////////////////////////////////////////////////////////////////////////////
  /// Subjects
  //////////////////////////////////////////////////////////////////////////////

  void _fetchSubjects(
    _FetchSubjects event,
    Emitter<GetSchoolDataState> emit,
  ) async {
    emit(
      state.copyWith(
        fetchClassesStatus: FormzSubmissionStatus.inProgress,
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
    Emitter<GetSchoolDataState> emit,
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
    Emitter<GetSchoolDataState> emit,
  ) {
    emit(state.copyWith(selectedSubject: event.subjectNameKey));
  }

  void _fetchSubjectFailed(
    _FetchSubjectsFailed event,
    Emitter<GetSchoolDataState> emit,
  ) {
    emit(
      state.copyWith(
        fetchClassesStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message ?? 'An error occurred',
      ),
    );
  }

  //////////////////////////////////////////////////////////////////////////////
  /// Students
  //////////////////////////////////////////////////////////////////////////////

  void _fetchStudents(
    _FetchStudents event,
    Emitter<GetSchoolDataState> emit,
  ) async {
    emit(
      state.copyWith(
        fetchStudentsStatus: FormzSubmissionStatus.inProgress,
      ),
    );

    try {
      final students = await locator<GetSchoolDataClient>().getStudentsByClass(
        await getAuthorization(),
        event.selectedClassId ?? '',
      );
      add(_FetchStudentsSuccessful(students));
    } catch (error) {
      if (error is DioError) {
        final message = error.response?.data?['message'];

        add(
          _FetchStudentsFailed(
            message?.toString() ?? 'An unexpected error occurred',
          ),
        );
      } else {
        add(const _FetchStudentsFailed('An unexpected error occurred'));
      }
    }
  }

  void _fetchStudentsSuccessful(
    _FetchStudentsSuccessful event,
    Emitter<GetSchoolDataState> emit,
  ) {
    emit(
      state.copyWith(
        fetchStudentsStatus: FormzSubmissionStatus.success,
        getStudentsModel: event.getStudentsModel,
        getStudentsDatum: event.getStudentsModel.data,
      ),
    );
  }

  void _fetchStudentsFailed(
    _FetchStudentsFailed event,
    Emitter<GetSchoolDataState> emit,
  ) {
    emit(
      state.copyWith(
        fetchStudentsStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message ?? 'An error occurred',
      ),
    );
  }

  void _onSelectedStudentId(
    _OnSelectedStudentId event,
    Emitter<GetSchoolDataState> emit,
  ) {
    emit(
      state.copyWith(selectedStudentId: event.onSelectedStudentId),
    );
  }

  void _fetchSubjectForStudent(
    _FetchSubjectForStudent event,
    Emitter<GetSchoolDataState> emit,
  ) async {
    emit(
      state.copyWith(
        fetchSubjectForStudentStatus: FormzSubmissionStatus.inProgress,
      ),
    );

    try {
      final subjects =
          await locator<GetSchoolDataClient>().getSubjectForStudent(
        await getAuthorization(),
        state.selectedSubject ?? state.selectedStudentId,
      );
      add(_FetchSubjectForStudentSuccessful(subjects));
    } catch (error) {
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
    Emitter<GetSchoolDataState> emit,
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
    Emitter<GetSchoolDataState> emit,
  ) {
    emit(
      state.copyWith(
        fetchSubjectForStudentStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message ?? 'An error occurred',
      ),
    );
  }

  void _errorMessage(_ErrorMessage event, Emitter<GetSchoolDataState> emit) {
    emit(
      state.copyWith(
        errorMessage: event.message,
      ),
    );
  }
}
