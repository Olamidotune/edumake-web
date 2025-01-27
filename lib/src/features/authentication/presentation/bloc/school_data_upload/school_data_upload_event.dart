part of 'school_data_upload_bloc.dart';

@freezed
class SchoolDataUploadEvent with _$SchoolDataUploadEvent {
  const factory SchoolDataUploadEvent() = _Started;

  const factory SchoolDataUploadEvent.onClassNameChanged(String classes) =
      _OnClassNameChanged;

  const factory SchoolDataUploadEvent.setCsvClasses(List<String> csvClasses) =
      _SetCsvClasses;

  const factory SchoolDataUploadEvent.uploadClasses({
    required List<String> classes,
  }) = _UploadClasses;

  const factory SchoolDataUploadEvent.uploadClassesSuccess(Classes classes) =
      _UploadClassesSuccess;

  const factory SchoolDataUploadEvent.uploadClassesFailure(
    String? errorMessage,
  ) = _UploadClassesFailure;

  const factory SchoolDataUploadEvent.errorMessage(String errorMessage) =
      _ErrorMessage;
}
