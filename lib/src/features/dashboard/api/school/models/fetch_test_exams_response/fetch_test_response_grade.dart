import 'package:json_annotation/json_annotation.dart';

part 'fetch_test_response_grade.g.dart';

@JsonSerializable()
class FetchTestResponseGrade {
  FetchTestResponseGrade({
    required this.grade,
    required this.id,
  });

  factory FetchTestResponseGrade.fromJson(Map<String, dynamic> json) =>
      _$FetchTestResponseGradeFromJson(json);
  @JsonKey(name: 'grade')
  final double grade;

  @JsonKey(name: '_id')
  final String id;
  Map<String, dynamic> toJson() => _$FetchTestResponseGradeToJson(this);
}
