part of 'add_subjects_bloc.dart';

@freezed
class AddSubjectsEvent with _$AddSubjectsEvent {
  const factory AddSubjectsEvent.started() = _Started;

  const factory AddSubjectsEvent.submitSubjects(
    List<Subject> subjects,
  ) = _SubmitSubjects;

  const factory AddSubjectsEvent.submitSubjectSuccessFul() =
      _SubmitSubjectSuccessful;

  const factory AddSubjectsEvent.submitSubjectFailed(String? message) =
      _SubmitSubjectFailed;

  const factory AddSubjectsEvent.onSubjectFieldChanged(
    String subject,
    int index,
  ) = _OnSubjectFieldChanged;

  const factory AddSubjectsEvent.onNoteFieldChanged(String note, int index) =
      _OnNoteFieldChanged;

  const factory AddSubjectsEvent.submitSubjectCSV(
    PlatformFile file,
  ) = _SubmitSubjectCSV;

  const factory AddSubjectsEvent.pickAndUploadCsv() = _PickAndUploadCsv;

  const factory AddSubjectsEvent.submitSubjectCSVSuccessful(
    hasSaved,
  ) = _SubmitSubjectCSVSuccessful;

  const factory AddSubjectsEvent.submitSubjectCSVFailed(String? message) =
      _SubmitSubjectCSVFailed;

  const factory AddSubjectsEvent.errorMessage(String? message) = _ErrorMessage;
}
