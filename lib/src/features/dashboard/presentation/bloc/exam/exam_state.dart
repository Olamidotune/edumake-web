part of 'exam_bloc.dart';

@freezed
class ExamState with _$ExamState {
  const factory ExamState({
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchExamTimetableStatus,
    FetchTimeTableResponse? fetchExamTimetableResponse,
    List<TimeTableDatum>? timeTableDatum,
    String? errorMessage,
  }) = _ExamState;
}
