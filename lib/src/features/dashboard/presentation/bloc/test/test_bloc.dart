// ignore_for_file: lines_longer_than_80_chars
import 'package:bloc/bloc.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/test_exam/test_result_client.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_exams_resquests/test_result_grade_request.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_exams_resquests/test_result_request.dart';
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

//   void _addTestResult(
//   _AddTestResult event,
//   Emitter<TestState> emit,
// ) async {
  // if (state.addTestResultStatus == FormzSubmissionStatus.inProgress) {
  //   return;
  // }

  // emit(state.copyWith(addTestResultStatus: FormzSubmissionStatus.inProgress));

  // try {
  //   final testResults = await locator<TestResultClient>().addTestResult(
  //     await getAuthorization(),
  //     await getSchoolID(),
  //     event.testResultRequest,
  //   );

//     emit(state.copyWith(
//       addTestResultStatus: FormzSubmissionStatus.success,
//       errorMessage: null,
//     ));
//   } catch (error, trace) {
//     onError(error, trace);
//     emit(state.copyWith(
//       addTestResultStatus: FormzSubmissionStatus.failure,
//       errorMessage: error.toString(),
//     ));
//   }
// }

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

  void _errorMessage(_ErrorMessage event, Emitter<TestState> emit) {
    emit(
      state.copyWith(errorMessage: state.errorMessage),
    );
  }
}
