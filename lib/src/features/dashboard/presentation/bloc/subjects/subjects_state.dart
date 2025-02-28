part of 'subjects_bloc.dart';

@freezed
class SubjectsState with _$SubjectsState {
  const factory SubjectsState({
    //////////////////////////////////////////////
    ///FETCH SUBJECTS FOR STUDENT
    /////////////////////////////////////////////
    GetSubjectForStudent? getSubjectForStudent,
    List<GetSubjectForStudentDatum>? getSubjectForStudentDatum,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchSubjectForStudentStatus,

    //////////////////////////////////////////////
    ///FETCH SUBJECTS FOR CLASS
    /////////////////////////////////////////////
    FetchClassSubjects? fetchClassSubjects,
    List<FetchClassSubjectsDatum>? fetchClassSubjectsDatum,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchClassSubjectsStatus,

    //////////////////////////////////////////////
    ///FETCH SUBJECTS
    /////////////////////////////////////////////
    List<Datum>? subjectData,
    String? totalSubjectCursor,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchSubjectStatus,
    String? selectedSubject,
    String? selectedStudentId,
    String? errorMessage,
    @Default([]) List<Datum> subjects,
    GetSchoolDataModel? getSchoolDataModel,
  }) = _SubjectsState;

  const SubjectsState._();
}
