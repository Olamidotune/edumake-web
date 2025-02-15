import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_grade_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'test_result_model.g.dart';

@JsonSerializable()
class TestResult {
  TestResult({
    required this.id,
    required this.title,
    required this.subject,
    required this.classId,
    required this.school,
    required this.addedBy,
    required this.dateWritten,
    required this.isDeleted,
    required this.grades,
    required this.createdAt,
    required this.updatedAt,
  });
  factory TestResult.fromJson(Map<String, dynamic> json) =>
      _$TestResultFromJson(json);
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'subject')
  final String subject;
  @JsonKey(name: 'classId')
  final String classId;
  @JsonKey(name: 'school')
  final String school;
  @JsonKey(name: 'addedBy')
  final String addedBy;
  @JsonKey(name: 'dateWritten')
  final DateTime dateWritten;
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  @JsonKey(name: 'grades')
  final List<TestGradeModel> grades;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  Map<String, dynamic> toJson() => _$TestResultToJson(this);
}
