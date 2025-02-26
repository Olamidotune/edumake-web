part of 'timetable_bloc.dart';

@freezed
class TimetableState with _$TimetableState {
  const factory TimetableState(
      {@Default(FormzSubmissionStatus.initial)
      FormzSubmissionStatus fetchTimeTableStatus,
      FetchTimeTableResponse? fetchTimeTableResponse,
      List<TimeTableDatum>? timeTableDatum,
      String? errorMessage}) = _TimetableState;
}
