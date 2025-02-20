import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_exams_response/test_response_grade.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_exams_response/test_response_subject.dart';

import 'package:json_annotation/json_annotation.dart';

part 'test_response_datum.g.dart';

@JsonSerializable()
class TestResponseDatum {
  TestResponseDatum({
    required this.id,
    required this.title,
    required this.testResponseSubject,
    required this.dateWritten,
    required this.classId,
    required this.testResponseSchool,
    required this.addedBy,
    required this.testResponseGrades,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory TestResponseDatum.fromJson(Map<String, dynamic> json) =>
      _$TestResponseDatumFromJson(json);
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'subject')
  final TestResponseSubject testResponseSubject;

  @JsonKey(name: 'dateWritten')
  final DateTime dateWritten;

  @JsonKey(name: 'classId')
  final TestResponseSubject classId;

  @JsonKey(name: 'school')
  final String testResponseSchool;

  @JsonKey(name: 'addedBy')
  final String addedBy;

  @JsonKey(name: 'grades')
  final List<TestResponseGrade> testResponseGrades;

  @JsonKey(name: 'isDeleted')
  final bool isDeleted;

  @JsonKey(name: 'createdAt')
  final DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  @JsonKey(name: '__v')
  final int v;
  Map<String, dynamic> toJson() => _$TestResponseDatumToJson(this);
}
