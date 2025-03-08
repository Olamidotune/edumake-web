part of 'curriculum_bloc.dart';

@freezed
class CurriculumEvent with _$CurriculumEvent {
  const factory CurriculumEvent() = _CurriculumEvent;

  //////////FETCH////////////
  const factory CurriculumEvent.fetchCurriculums(
      String? parentSchoolId, String? subjectId) = _FetchCurriculum;
  const factory CurriculumEvent.fetchCurriculumsSuccess(
    FetchCurriculum fetchCurriculumModel,
  ) = _FetchCurriculumsSuccess;
  const factory CurriculumEvent.fetchCurriculumsFailed(
    String? message,
  ) = _FetchCurriculumsFailed;
  const factory CurriculumEvent.onSelectedCurriculumNameChanged(
    String? curriculumNameKey,
  ) = _OnSelectedCurriculumNameChanged;
}
