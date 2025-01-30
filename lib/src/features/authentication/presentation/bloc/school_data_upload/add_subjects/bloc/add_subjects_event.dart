part of 'add_subjects_bloc.dart';

@freezed
class AddSubjectsEvent with _$AddSubjectsEvent {
  const factory AddSubjectsEvent.started() = _Started;

  const factory AddSubjectsEvent.submitSubjects(
    String selectedClass,
    String subject,
    String? note,
  ) = _SubmitSubjects;

  const factory AddSubjectsEvent.submitSubjectSuccessFul(
    ApiResponseMessage result,
  ) = _SubmitSubjectSuccessful;

  const factory AddSubjectsEvent.submitSubjectFailed(String? message) =
      _SubmitSubjectFailed;

  const factory AddSubjectsEvent.onSubjectFieldChanged(String subject) =
      _OnSubjectFieldChanged;

  const factory AddSubjectsEvent.onNoteFieldChanged(String note) =
      _OnNoteFieldChanged;

  const factory AddSubjectsEvent.errorMessage(String? message) = _ErrorMessage;
}
