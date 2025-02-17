import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_grade_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'test_result_model.g.dart';

@JsonSerializable()
class TestResult {
  TestResult({
    required this.title,
    required this.subject,
    required this.dateWritten,
    required this.classId,
    required this.school,
    required this.addedBy,
    required this.grades,
    required this.isDeleted,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
  });
  factory TestResult.fromJson(Map<String, dynamic> json) =>
      _$TestResultFromJson(json);

  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'subject')
  final String subject;
  @JsonKey(name: 'dateWritten')
  final String dateWritten;
  @JsonKey(name: 'classId')
  final String classId;
  @JsonKey(name: 'school')
  final String school;
  @JsonKey(name: 'addedBy')
  final String addedBy;
  @JsonKey(name: 'grades')
  final List<TestGradeModel> grades;
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;

  Map<String, dynamic> toJson() => _$TestResultToJson(this);
}





//  "url": "https://edumake-backend.onrender.com/api/v1/sch/test/67991ea0c1bc2dd292b374b1",
//  "method": "POST",
//  "payload": {
//    "title": "Testing New Model",
//    "subjectId": "679c3bb5612df077b49947f1",
//    "classId": "67994daa70cb1409e17f1c63",
//    "dateWritten": "2025-02-18",
//    "grades": [
//      "Instance of 'Grade'"
//    ]
//  }