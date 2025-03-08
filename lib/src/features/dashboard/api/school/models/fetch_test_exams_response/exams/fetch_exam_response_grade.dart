import 'package:json_annotation/json_annotation.dart';

part 'fetch_exam_response_grade.g.dart';

@JsonSerializable()
class FetchExamResponseGrade {
  FetchExamResponseGrade({
    required this.student,
    required this.grade,
    required this.id,
  });

  factory FetchExamResponseGrade.fromJson(Map<String, dynamic> json) =>
      _$FetchExamResponseGradeFromJson(json);
  @JsonKey(name: 'student')
  final String student;

  @JsonKey(name: 'grade')
  final double grade;

  @JsonKey(name: '_id')
  final String id;

  Map<String, dynamic> toJson() => _$FetchExamResponseGradeToJson(this);
}
