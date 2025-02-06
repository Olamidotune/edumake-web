part of 'get_school_data_bloc.dart';

@freezed
class GetSchoolDataEvent with _$GetSchoolDataEvent {
  const factory GetSchoolDataEvent() = _GetSchoolDataEvent;
  const factory GetSchoolDataEvent.init() = _Init;
  const factory GetSchoolDataEvent.fetchPaginatedClasses() = _FetchClasses;
  const factory GetSchoolDataEvent.fetchClassesSuccess(
    GetSchoolDataModel getSchoolDataModel,
  ) = _FetchClassesSuccess;
  const factory GetSchoolDataEvent.fetchClassesFailed(String? message) =
      _FetchClassesFailed;
  const factory GetSchoolDataEvent.onSelectedClassNameChanged(
    String? classNameKey,
  ) = _OnSelectedClassNameChanged;
  //////////SUBJECTS//////////////
  const factory GetSchoolDataEvent.fetchSubjects() = _FetchSubjects;
  const factory GetSchoolDataEvent.fetchSubjectsSuccess(
    GetSchoolDataModel getSchoolDataModel,
  ) = _FetchSubjectsSuccess;
  const factory GetSchoolDataEvent.fetchSubjectsFailed(
    String? message,
  ) = _FetchSubjectsFailed;
  const factory GetSchoolDataEvent.onSelectedSubjectNameChanged(
    String? subjectNameKey,
  ) = _OnSelectedSubjectNameChanged;
////////STUDENTS/////////
  const factory GetSchoolDataEvent.fetchStudents(String? selectedClassId) =
      _FetchStudents;
  const factory GetSchoolDataEvent.fetchStudentsSuccessful(
    GetStudentsModel getStudentsModel,
  ) = _FetchStudentsSuccessful;
  const factory GetSchoolDataEvent.fetchStudentsFailed(String? message) =
      _FetchStudentsFailed;
  const factory GetSchoolDataEvent.errorMessage(String? message) =
      _ErrorMessage;
}
