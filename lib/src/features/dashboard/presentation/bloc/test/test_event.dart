part of 'test_bloc.dart';

@freezed
class TestEvent with _$TestEvent {
  const factory TestEvent() = _TestEvent;
  const factory TestEvent.titleChanged(
    String title,
  ) = _TitleChanged;
  const factory TestEvent.gradeChanged(double grade) = _GradeChanged;
  const factory TestEvent.dateChanged(String date) = _DateChanged;
  const factory TestEvent.addTestResult(
    TestResultRequest testResultRequest,
  ) = _AddTestResult;
  const factory TestEvent.addTestResultSuccessful(
    TestResponse result,
  ) = _AddTestResultSuccessful;
  const factory TestEvent.addTestResultFailed(
    String? message,
  ) = _AddTestResultFailed;

  ////////////////////////////////////////////////////////////////////
  /// Add Exam Results
  //////////////////////////////////////////////////////////////////////

  const factory TestEvent.addExamResult(
    TestResultRequest examResultRequest,
  ) = _AddExamResult;

  const factory TestEvent.addExamResultSuccessful(
    TestResponse examResultResponse,
  ) = _AddExamResultSuccessful;

  const factory TestEvent.addExamResultFailed(
    String? message,
  ) = _AddExamResultFailed;

  ////////////////////////////////////////////////////////////////////
  /// Fetch Test Results
  //////////////////////////////////////////////////////////////////////
  const factory TestEvent.fetchTestResults(
    String studentId,
    String classId,
    String subjectId,
  ) = _FetchTestResults;
  const factory TestEvent.fetchTestResultsSuccessful(
    FetchTestResponse fetchTestResponse,
  ) = _FetchTestResultsSuccessful;
  const factory TestEvent.fetchTestResultsFailed(
    String? message,
  ) = _FetchTestResultsFailed;

  ////////////////////////////////////////////////////////////////////
  /// Fetch Exam Results
  //////////////////////////////////////////////////////////////////////
  const factory TestEvent.fetchExamResults(
    String studentId,
    String classId,
    String subjectId,
  ) = _FetchExamResults;

  const factory TestEvent.fetchExamResultsSuccessful(
    FetchExamResponse fetchExamResultResponse,
  ) = _FetchExamResultsSuccessful;

  const factory TestEvent.fetchExamResultsFailed(
    String? message,
  ) = _FetchExamResultsFailed;

  const factory TestEvent.errorMessage(String? message) = _ErrorMessage;
}
