part of 'test_bloc.dart';

// fetchExamResults

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
// ADD EXAM RESULTS
//==============================================================================
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus addExamResultStatus,
    @Default(ExamTitleFormz.pure()) ExamTitleFormz examTitle,
    //Using 'TestResult' cause the example request format is same with test.
    TestResult? examResultModel,
    String? examId,
    String? examDate,
    String? examStudentId,
    List<Grade>? examGrades,
    double? examGrade,
//==============================================================================
// FETCH TEST RESULTS
//==============================================================================
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchTestResultsStatus,
    FetchTestResponse? fetchTestResponse,
    List<FetchTestResponseDatum>? fetchTestResultsData,
    List<FetchTestResponseGrade>? fetchTestResultsGrades,

//==============================================================================
// FETCH EXAM RESULTS
//==============================================================================
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchExamResultsStatus,
    FetchExamResponse? fetchExamResponse,
    List<FetchExamResponseDatum>? fetchExamResultsData,
    List<FetchExamResponseGrade>? fetchExamResultsGrades,

//==============================================================================
// FETCH SUBJECT TEST RESULTS
//==============================================================================

    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchSubjectTestResultsStatus,
    FetchSubjectTestResult? fetchSubjectTestResult,
    List<FetchSubjectTestResultDatum>? fetchSubjectTestResultsData,
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

class ExamTitleFormz extends FormzInput<String, ValidationError> {
  const ExamTitleFormz.pure([String value = '']) : super.pure(value);
  const ExamTitleFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 6) {
      return ValidationError.short;
    }

    return null;
  }
}
