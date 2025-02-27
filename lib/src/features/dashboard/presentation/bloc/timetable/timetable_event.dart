part of 'timetable_bloc.dart';

@freezed
class TimetableEvent with _$TimetableEvent {
  const factory TimetableEvent() = _TimetableEvent;
  const factory TimetableEvent.fetchTimetable(
    String classId,
    String? parentSchoolId,
  ) = _FetchTimeTableByClass;

  const factory TimetableEvent.fetchTimetableSuccessful(
          FetchTimeTableResponse fetchTimeTableResponse) =
      _FetchTimetableByClassSuccessful;

  const factory TimetableEvent.fetchTimetableFailed(
    String? message,
  ) = _FetchTimetableByClassFailed;

  const factory TimetableEvent.errorMessage(String? message) = _ErrorMessage;
}
