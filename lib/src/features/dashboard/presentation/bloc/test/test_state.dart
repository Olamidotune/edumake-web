part of 'test_bloc.dart';

@freezed
class TestState with _$TestState {
  const factory TestState({
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus addTestResultStatus,
    @Default(TestTitleFormz.pure()) TestTitleFormz testTitle,
    TestResult? testResultModel,
    String? subjectId,
    String? classId,
    String? dateWritten,
    String? studentId,
    List<Grade>? grades,
    double? testGrade,

//==============================================================================
// FORMZ -  FETCH TEST RESULTS
//==============================================================================

    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchTestResultsStatus,
    FetchTestResponse? fetchTestResponse,
    List<FetchTestResponseDatum>? fetchTestResultsData,
    String? errorMessage,
  }) = _TestState;
}

//==============================================================================
// FORMZ -  TITLE
//==============================================================================

class TestTitleFormz extends FormzInput<String, ValidationError> {
  const TestTitleFormz.pure([String value = '']) : super.pure(value);
  const TestTitleFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 6) {
      return ValidationError.short;
    }

    return null;
  }
}
//==============================================================================
// FORMZ -  GRADE
//==============================================================================

class TestGradeFormz extends FormzInput<double, ValidationError> {
  const TestGradeFormz.pure([double value = 0.0]) : super.pure(value);
  const TestGradeFormz.dirty([double value = 0]) : super.dirty(value);

  @override
  ValidationError? validator(double? value) {
    if (value == null) return ValidationError.empty;
    return null;
  }
}
