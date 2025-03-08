part of 'curriculum_bloc.dart';

@freezed
class CurriculumState with _$CurriculumState {
  const factory CurriculumState({
    List<FetchCurriculumDatum>? fetchCurriculumDatum,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchCurriculumStatus,
    String? selectedSubject,
    String? selectedStudentId,
    String? errorMessage,
    FetchCurriculum? fetchCurriculumResponse,
  }) = _CurriculumState;
}
