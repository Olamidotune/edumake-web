part of 'add_subjects_bloc.dart';

@freezed
class AddSubjectsState with _$AddSubjectsState {
  const factory AddSubjectsState({
    // List<Datum> selectedClass,
    String? selectedClass,
    @Default([]) List<String> csvClasses,
    @Default(SubjectFormz.pure()) SubjectFormz subject,
    @Default(NoteFormz.pure()) NoteFormz note,
    @Default(false) hasSaved,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus subjectUploadStatus,
    String? errorMessage,
  }) = _AddSubjectsState;

  const AddSubjectsState._();
}

//==============================================================================
// FORMZ -  Subjects
//==============================================================================
class SubjectFormz extends FormzInput<String, ValidationError> {
  const SubjectFormz.pure([String value = '']) : super.pure(value);
  const SubjectFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 3) return ValidationError.short;

    return null;
  }
}

//==============================================================================
// FORMZ -  Classes
//==============================================================================
class NoteFormz extends FormzInput<String, ValidationError> {
  const NoteFormz.pure([String value = '']) : super.pure(value);
  const NoteFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 3) return ValidationError.short;

    return null;
  }
}
