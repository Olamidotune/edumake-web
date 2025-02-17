import 'package:json_annotation/json_annotation.dart';

part 'test_grade_model.g.dart';

@JsonSerializable()
class TestGradeModel {
  TestGradeModel({
    required this.grade,
    required this.id,
  });

  factory TestGradeModel.fromJson(Map<String, dynamic> json) =>
      _$TestGradeModelFromJson(json);
  @JsonKey(name: 'grade')
  final double grade;

  @JsonKey(name: '_id')
  final String id;

  Map<String, dynamic> toJson() => _$TestGradeModelToJson(this);
}
