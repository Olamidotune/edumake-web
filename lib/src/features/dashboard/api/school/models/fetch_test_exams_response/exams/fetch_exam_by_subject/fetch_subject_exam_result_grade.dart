import 'package:json_annotation/json_annotation.dart';

part 'fetch_subject_exam_result_grade.g.dart';

@JsonSerializable()
class FetchSubjectExamResultGrade {
  FetchSubjectExamResultGrade({
    required this.grade,
    required this.id,
  });

  factory FetchSubjectExamResultGrade.fromJson(Map<String, dynamic> json) =>
      _$FetchSubjectExamResultGradeFromJson(json);
  @JsonKey(name: 'grade')
  final double grade;

  @JsonKey(name: '_id')
  final String id;
  Map<String, dynamic> toJson() => _$FetchSubjectExamResultGradeToJson(this);
}
