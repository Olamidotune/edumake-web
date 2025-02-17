part of 'get_school_data_bloc.dart';

@freezed
class GetSchoolDataState with _$GetSchoolDataState {
  const factory GetSchoolDataState({
    GetSchoolDataModel? getSchoolDataModel,
    List<Datum>? classesData,
    String? errorMessage,
    String? totalClassCursor,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchClassesStatus,
    @Default([]) List<Datum> classes,
    @Default(false) bool isClassesLoading,
    String? selectedClassName,
    List<Datum>? subjectData,
    String? totalSubjectCursor,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchSubjectStatus,
    @Default([]) List<Datum> subjects,
    @Default(false) bool isSubjectLoading,
    String? selectedSubject,
    String? selectedStudentId,
    //////////////////////////////////////////////
    GetStudentsModel? getStudentsModel,
    List<GetStudentsDatum>? getStudentsDatum,
    @Default(false) bool isStudentLoading,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchStudentsStatus,
    //////////////////////////////////////////////
    GetSubjectForStudent? getSubjectForStudent,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchSubjectForStudentStatus,
  }) = _GetSchoolDataState;

  const GetSchoolDataState._();
}
