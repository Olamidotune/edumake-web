import 'package:edumake_frontend/src/features/dashboard/api/school/models/fetch_test_exams_response/exams/fetch_exam_by_subject/fetch_subject_exam_result_class.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fetch_test_exams_response/exams/fetch_exam_by_subject/fetch_subject_exam_result_grade.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fetch_subject_exam_result_datum.g.dart';

@JsonSerializable()
class FetchSubjectExamResultDatum {
  FetchSubjectExamResultDatum({
    required this.id,
    required this.title,
    required this.subject,
    required this.dateWritten,
    required this.classId,
    required this.school,
    required this.addedBy,
    required this.grades,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory FetchSubjectExamResultDatum.fromJson(Map<String, dynamic> json) =>
      _$FetchSubjectExamResultDatumFromJson(json);
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'subject')
  final FetchSubjectExamResultClassId subject;

  @JsonKey(name: 'dateWritten')
  final String dateWritten;

  @JsonKey(name: 'classId')
  final FetchSubjectExamResultClassId classId;

  @JsonKey(name: 'school')
  final String school;

  @JsonKey(name: 'addedBy')
  final String addedBy;

  @JsonKey(name: 'grades')
  final List<FetchSubjectExamResultGrade> grades;

  @JsonKey(name: 'isDeleted')
  final bool isDeleted;

  @JsonKey(name: 'createdAt')
  final String createdAt;

  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  @JsonKey(name: '__v')
  final int v;
  Map<String, dynamic> toJson() => _$FetchSubjectExamResultDatumToJson(this);
}
