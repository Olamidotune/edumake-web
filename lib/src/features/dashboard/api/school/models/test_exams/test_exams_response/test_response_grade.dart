import 'package:json_annotation/json_annotation.dart';

part 'test_response_grade.g.dart';

@JsonSerializable()
class TestResponseGrade {
  TestResponseGrade({
    required this.grade,
    required this.id,
  });

  factory TestResponseGrade.fromJson(Map<String, dynamic> json) =>
      _$TestResponseGradeFromJson(json);
  @JsonKey(name: 'grade')
  final double grade;

  @JsonKey(name: '_id')
  final String id;
  Map<String, dynamic> toJson() => _$TestResponseGradeToJson(this);
}
