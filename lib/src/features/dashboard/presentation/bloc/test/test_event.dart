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

  const factory TestEvent.errorMessage(String? message) = _ErrorMessage;
}
