part of 'subjects_bloc.dart';

@freezed
class SubjectsEvent with _$SubjectsEvent {
  const factory SubjectsEvent() = _SubjectsEvent;
  //////////SUBJECTS FOR STUDENT//////////////
  const factory SubjectsEvent.fetchSubjectForStudent(String studentId) =
      _FetchSubjectForStudent;
  const factory SubjectsEvent.fetchSubjectForStudentSuccessful(
    GetSubjectForStudent getSubjectForStudent,
  ) = _FetchSubjectForStudentSuccessful;
  const factory SubjectsEvent.onSelectedStudentId(
    String? onSelectedStudentId,
  ) = _OnSelectedStudentId;
  const factory SubjectsEvent.fetchSubjectForStudentFailed(
    String? message,
  ) = _FetchSubjectForStudentFailed;

  //////////SUBJECTS FOR CLASS//////////////
  const factory SubjectsEvent.fetchClassSubjects(String? selectedClassId) =
      _FetchClassSubjects;
  const factory SubjectsEvent.fetchClassSubjectsSuccessful(
    FetchClassSubjects fetchClassSubjects,
  ) = _FetchClassSubjectsSuccessful;
  const factory SubjectsEvent.onSelectedSubjectId(
    String? onSelectedSubjectId,
  ) = _OnSelectedSubjectId;
  const factory SubjectsEvent.fetchClassSubjectsFailed(
    String? message,
  ) = _FetchClassSubjectsFailed;

  //////////SUBJECTS//////////////
  const factory SubjectsEvent.fetchSubjects() = _FetchSubjects;
  const factory SubjectsEvent.fetchSubjectsSuccess(
    GetSchoolDataModel getSchoolDataModel,
  ) = _FetchSubjectsSuccess;
  const factory SubjectsEvent.fetchSubjectsFailed(
    String? message,
  ) = _FetchSubjectsFailed;
  const factory SubjectsEvent.onSelectedSubjectNameChanged(
    String? subjectNameKey,
  ) = _OnSelectedSubjectNameChanged;
}
