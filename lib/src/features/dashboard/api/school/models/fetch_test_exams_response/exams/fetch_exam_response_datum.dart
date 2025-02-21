import 'package:edumake_frontend/src/features/dashboard/api/school/models/fetch_test_exams_response/exams/fetch_exam_response_grade.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fetch_test_exams_response/exams/fetch_exam_response_subject.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fetch_exam_response_datum.g.dart';

@JsonSerializable()
class FetchExamResponseDatum {
  FetchExamResponseDatum({
    required this.id,
    required this.title,
    required this.examResponseSubject,
    required this.dateWritten,
    required this.classId,
    required this.testResponseSchool,
    required this.addedBy,
    required this.examResponseGrades,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory FetchExamResponseDatum.fromJson(Map<String, dynamic> json) =>
      _$FetchExamResponseDatumFromJson(json);
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'subject')
  final FetchExamResponseSubject examResponseSubject;

  @JsonKey(name: 'dateWritten')
  final String dateWritten;

  @JsonKey(name: 'classId')
  final FetchExamResponseSubject classId;

  @JsonKey(name: 'school')
  final String testResponseSchool;

  @JsonKey(name: 'addedBy')
  final String addedBy;

  @JsonKey(name: 'grades')
  final List<FetchExamResponseGrade> examResponseGrades;

  @JsonKey(name: 'isDeleted')
  final bool isDeleted;

  @JsonKey(name: 'createdAt')
  final DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  @JsonKey(name: '__v')
  final int v;
  Map<String, dynamic> toJson() => _$FetchExamResponseDatumToJson(this);
}
