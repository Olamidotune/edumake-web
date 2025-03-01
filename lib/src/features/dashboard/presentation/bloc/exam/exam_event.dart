part of 'exam_bloc.dart';

@freezed
class ExamEvent with _$ExamEvent {
  const factory ExamEvent() = _ExamEvent;
  const factory ExamEvent.fetchTimetable(
    String classId,
    String? parentSchoolId,
  ) = _FetchExamTimeTableByClass;

  const factory ExamEvent.fetchTimetableSuccessful(
          FetchTimeTableResponse fetchTimeTableResponse) =
      _FetchExamTimeTableByClassSuccessful;

  const factory ExamEvent.fetchTimetableFailed(
    String? message,
  ) = _FetchExamTimeTableByClassFailed;

  const factory ExamEvent.errorMessage(String? message) = _ErrorMessage;
}
