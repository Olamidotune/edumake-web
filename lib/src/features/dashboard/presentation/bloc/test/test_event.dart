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

  const factory TestEvent.errorMessage(String? message) = _ErrorMessage;
}
