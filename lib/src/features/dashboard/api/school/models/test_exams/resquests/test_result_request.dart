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

  Map<String, dynamic> toJson() => _$TestResultRequestToJson(this);
}

@JsonSerializable()
class Grade {
  Grade({
    required this.studentId,
    required this.grade,
  });

  factory Grade.fromJson(Map<String, dynamic> json) => _$GradeFromJson(json);
  final String studentId;
  final double grade;
  Map<String, dynamic> toJson() => _$GradeToJson(this);
}
