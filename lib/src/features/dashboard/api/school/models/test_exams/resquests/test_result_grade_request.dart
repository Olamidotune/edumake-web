import 'package:json_annotation/json_annotation.dart';

part 'test_result_grade_request.g.dart';

@JsonSerializable()
class Grade {
  Grade({
    required this.grade,
    required this.studentId,
  });

  factory Grade.fromJson(Map<String, dynamic> json) => _$GradeFromJson(json);
  @JsonKey(name: 'grade')
  final double grade;
  @JsonKey(name: 'studentId')
  final String studentId;

  Map<String, dynamic> toJson() => _$GradeToJson(this);
}
