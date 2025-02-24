import 'package:json_annotation/json_annotation.dart';

part 'fetch_subject_test_result_grade.g.dart';

@JsonSerializable()
class FetchSubjectTestResultGrade {
  FetchSubjectTestResultGrade({
    required this.grade,
    required this.id,
  });

  factory FetchSubjectTestResultGrade.fromJson(Map<String, dynamic> json) =>
      _$FetchSubjectTestResultGradeFromJson(json);
  @JsonKey(name: 'grade')
  final double grade;

  @JsonKey(name: '_id')
  final String id;
  Map<String, dynamic> toJson() => _$FetchSubjectTestResultGradeToJson(this);
}
