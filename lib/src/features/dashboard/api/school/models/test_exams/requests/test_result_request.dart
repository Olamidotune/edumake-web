import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/requests/test_result_grade_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'test_result_request.g.dart';

@JsonSerializable()
class TestResultRequest {
  TestResultRequest({
    required this.title,
    required this.subjectId,
    required this.classId,
    required this.dateWritten,
    required this.grades,
  });

  factory TestResultRequest.fromJson(Map<String, dynamic> json) =>
      _$TestResultRequestFromJson(json);
  final String title;
  final String subjectId;
  final String classId;
  final String dateWritten;
  final List<Grade> grades;

  Map<String, dynamic> toJson() => {
        'title': title,
        'subjectId': subjectId,
        'classId': classId,
        'dateWritten': dateWritten,
        'grades': grades
            .map((grade) => grade.toJson())
            .toList(), // Ensure serialization
      };
}
