import 'package:bloc/bloc.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/test_exam/test_result_client.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fetch_test_exams_response/exams/fetch_exam_response.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fetch_test_exams_response/exams/fetch_exam_response_datum.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fetch_test_exams_response/exams/fetch_exam_response_grade.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fetch_test_exams_response/fetch_test_response.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fetch_test_exams_response/fetch_test_response_datum.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fetch_test_exams_response/fetch_test_response_grade.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_exams_requests/test_result_grade_request.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_exams_requests/test_result_request.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_response.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_result_model.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_event.dart';
part 'test_state.dart';
part 'test_bloc.freezed.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestBloc() : super(const TestState()) {
    on<_TitleChanged>(_onTitleChanged);
    on<_GradeChanged>(_onGradeChanged);
    on<_DateChanged>(_dateChanged);
    on<_AddTestResult>(_addTestResult);
    on<_AddTestResultSuccessful>(_addTestResultSuccessful);
    on<_AddTestResultFailed>(_addTestResultFailed);
    on<_FetchTestResults>(_fetchTestResults);
    on<_FetchTestResultsSuccessful>(_fetchTestResultsSuccessful);
    on<_FetchTestResultsFailed>(_fetchTestResultsFailed);
    on<_AddExamResult>(_addExamResult);
    on<_AddExamResultSuccessful>(_addExamResultSuccessful);
    on<_AddExamResultFailed>(_addExamResultFailed);
    on<_FetchExamResults>(_fetchExamResults);
    on<_FetchExamResultsSuccessful>(_fetchExamResultsSuccessful);
    on<_FetchExamResultsFailed>(_fetchExamResultsFailed);
    on<_ErrorMessage>(_errorMessage);
  }

  void _onTitleChanged(_TitleChanged event, Emitter<TestState> emit) {
    final title = TestTitleFormz.dirty(event.title);

    emit(
      state.copyWith(
        testTitle: title.isValid ? title : TestTitleFormz.pure(event.title),
      ),
    );
  }

  void _onGradeChanged(_GradeChanged event, Emitter<TestState> emit) {
    emit(
      state.copyWith(testGrade: event.grade),
    );
  }

  void _dateChanged(_DateChanged event, Emitter<TestState> emit) {
    emit(state.copyWith(dateWritten: event.date));
  }

  void _addTestResult(
    _AddTestResult event,
    Emitter<TestState> emit,
  ) async {
    if (state.addTestResultStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(state.copyWith(addTestResultStatus: FormzSubmissionStatus.inProgress));

    try {
      final testResults = await locator<TestResultClient>().addTestResult(
        await getAuthorization(),
        await getSchoolID(),
        event.testResultRequest,
      );

      add(_AddTestResultSuccessful(testResults));
    } catch (error, trace) {
      onError(error, trace);
      add(_AddTestResultFailed(error.toString()));
    }
  }

  void _addTestResultSuccessful(
    _AddTestResultSuccessful event,
    Emitter<TestState> emit,
  ) {
    emit(
      state.copyWith(
        addTestResultStatus: FormzSubmissionStatus.success,
        errorMessage: null,
      ),
    );
  }

  void _addTestResultFailed(
    _AddTestResultFailed event,
    Emitter<TestState> emit,
  ) {
    emit(
      state.copyWith(
        addTestResultStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message,
      ),
    );
  }
  //////////////////////////////////////////////////////////////////////////
  /// Fetch Test Results
  ///////////////////////////////////////////////////////////////////////

  void _fetchTestResults(
    _FetchTestResults event,
    Emitter<TestState> emit,
  ) async {
    if (state.fetchTestResultsStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(
      state.copyWith(fetchTestResultsStatus: FormzSubmissionStatus.inProgress),
    );

    try {
      final testResults = await locator<TestResultClient>().fetchTestResults(
        await getAuthorization(),
        await getSchoolID(),
        event.studentId,
        event.classId,
        event.subjectId,
      );

      add(_FetchTestResultsSuccessful(testResults));
    } catch (error, trace) {
      onError(error, trace);
      add(_FetchTestResultsFailed(error.toString()));
    }
  }

  void _fetchTestResultsSuccessful(
    _FetchTestResultsSuccessful event,
    Emitter<TestState> emit,
  ) {
    emit(
      state.copyWith(
        fetchTestResultsStatus: FormzSubmissionStatus.success,
        fetchTestResponse: event.fetchTestResponse,
        fetchTestResultsData: event.fetchTestResponse.data,
        errorMessage: null,
      ),
    );
  }

  void _fetchTestResultsFailed(
    _FetchTestResultsFailed event,
    Emitter<TestState> emit,
  ) {
    emit(
      state.copyWith(
        fetchTestResultsStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message,
      ),
    );
  }

////////////////////////////////////////////////////////////////////
  /// Add Exam Results
//////////////////////////////////////////////////////////////////////

  void _addExamResult(
    _AddExamResult event,
    Emitter<TestState> emit,
  ) async {
    if (state.addExamResultStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(state.copyWith(addExamResultStatus: FormzSubmissionStatus.inProgress));

    try {
      final testResults = await locator<TestResultClient>().addExamResult(
        await getAuthorization(),
        await getSchoolID(),
        event.examResultRequest,
      );

      add(_AddExamResultSuccessful(testResults));
    } catch (error, trace) {
      onError(error, trace);
      add(_AddExamResultFailed(error.toString()));
    }
  }

  void _addExamResultSuccessful(
    _AddExamResultSuccessful event,
    Emitter<TestState> emit,
  ) {
    emit(
      state.copyWith(
        addExamResultStatus: FormzSubmissionStatus.success,
        errorMessage: null,
      ),
    );
  }

  void _addExamResultFailed(
    _AddExamResultFailed event,
    Emitter<TestState> emit,
  ) {
    emit(
      state.copyWith(
        addExamResultStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message,
      ),
    );
  }

////////////////////////////////////////////////////////////////////
  /// Fetch Exam Results
//////////////////////////////////////////////////////////////////////

  void _fetchExamResults(
    _FetchExamResults event,
    Emitter<TestState> emit,
  ) async {
    if (state.fetchExamResultsStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(
      state.copyWith(fetchExamResultsStatus: FormzSubmissionStatus.inProgress),
    );

    try {
      final examResults = await locator<TestResultClient>().fetchExamResults(
        await getAuthorization(),
        await getSchoolID(),
        event.studentId,
        event.classId,
        event.subjectId,
      );

      add(_FetchExamResultsSuccessful(examResults));
    } catch (error, trace) {
      onError(error, trace);
      add(_FetchExamResultsFailed(error.toString()));
    }
  }

  void _fetchExamResultsSuccessful(
    _FetchExamResultsSuccessful event,
    Emitter<TestState> emit,
  ) {
    emit(
      state.copyWith(
        fetchExamResultsStatus: FormzSubmissionStatus.success,
        fetchExamResponse: event.fetchExamResultResponse,
        fetchExamResultsData: event.fetchExamResultResponse.data,
        errorMessage: null,
      ),
    );
  }

  void _fetchExamResultsFailed(
    _FetchExamResultsFailed event,
    Emitter<TestState> emit,
  ) {
    emit(
      state.copyWith(
        fetchExamResultsStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message,
      ),
    );
  }

  void _errorMessage(_ErrorMessage event, Emitter<TestState> emit) {
    emit(
      state.copyWith(errorMessage: state.errorMessage),
    );
  }
}
