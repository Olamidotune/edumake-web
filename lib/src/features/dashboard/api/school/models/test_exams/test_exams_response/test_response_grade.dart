import 'package:json_annotation/json_annotation.dart';

part 'test_response_grade.g.dart';

@JsonSerializable()
class TestResponseGrade {
  @JsonKey(name: 'grade')
  final double grade;

  @JsonKey(name: '_id')
  final String id;

  TestResponseGrade({
    required this.grade,
    required this.id,
  });

  factory TestResponseGrade.fromJson(Map<String, dynamic> json) =>
      _$TestResponseGradeFromJson(json);
  Map<String, dynamic> toJson() => _$TestResponseGradeToJson(this);
}
