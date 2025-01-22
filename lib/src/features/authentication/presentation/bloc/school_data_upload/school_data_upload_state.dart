part of 'school_data_upload_bloc.dart';

// @freezed
// class SchoolDataUploadState with _$SchoolDataUploadState {
//   const factory SchoolDataUploadState({
//     @Default(ClassesFormz.pure()) ClassesFormz classes,
//     List<String>? csvClassesList,
//     @Default(FormzSubmissionStatus.initial)
//     FormzSubmissionStatus classesUploadStatus,
//     String? errorMessage,
//   }) = _SchoolDataUploadState;

//   const SchoolDataUploadState._();
// }

@freezed
class SchoolDataUploadState with _$SchoolDataUploadState {
  const factory SchoolDataUploadState({
    @Default(ClassesFormz.pure()) ClassesFormz manualClasses,
    @Default([]) List<String> csvClasses,
    List<Datum>? datum,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus classesUploadStatus,
    String? errorMessage,
  }) = _SchoolDataUploadState;

  const SchoolDataUploadState._();
}

//==============================================================================
// FORMZ -  Classes
//==============================================================================
class ClassesFormz extends FormzInput<String, ValidationError> {
  const ClassesFormz.pure([String value = '']) : super.pure(value);
  const ClassesFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 3) return ValidationError.short;

    return null;
  }
}
