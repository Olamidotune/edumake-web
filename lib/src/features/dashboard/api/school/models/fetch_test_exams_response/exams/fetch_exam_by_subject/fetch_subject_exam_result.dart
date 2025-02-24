import 'package:edumake_frontend/src/features/dashboard/api/school/models/fetch_test_exams_response/exams/fetch_exam_by_subject/fetch_subject_exam_result_datum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fetch_subject_exam_result.g.dart';

@JsonSerializable()
class FetchSubjectExamResult {
  FetchSubjectExamResult({
    required this.success,
    required this.message,
    required this.data,
    required this.cursor,
    required this.statusCode,
  });

  factory FetchSubjectExamResult.fromJson(Map<String, dynamic> json) =>
      _$FetchSubjectExamResultFromJson(json);
  @JsonKey(name: 'success')
  final bool success;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'data')
  final List<FetchSubjectExamResultDatum> data;

  @JsonKey(name: 'cursor')
  final String cursor;

  @JsonKey(name: 'statusCode')
  final int statusCode;
  Map<String, dynamic> toJson() => _$FetchSubjectExamResultToJson(this);
}
