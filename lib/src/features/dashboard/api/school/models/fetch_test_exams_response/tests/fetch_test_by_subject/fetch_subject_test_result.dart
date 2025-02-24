import 'package:edumake_frontend/src/features/dashboard/api/school/models/fetch_test_exams_response/tests/fetch_test_by_subject/fetch_subject_test_result_datum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fetch_subject_test_result.g.dart';

@JsonSerializable()
class FetchSubjectTestResult {
  FetchSubjectTestResult({
    required this.success,
    required this.message,
    required this.data,
    required this.cursor,
    required this.statusCode,
  });

  factory FetchSubjectTestResult.fromJson(Map<String, dynamic> json) =>
      _$FetchSubjectTestResultFromJson(json);
  @JsonKey(name: 'success')
  final bool success;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'data')
  final List<FetchSubjectTestResultDatum> data;

  @JsonKey(name: 'cursor')
  final String cursor;

  @JsonKey(name: 'statusCode')
  final int statusCode;
  Map<String, dynamic> toJson() => _$FetchSubjectTestResultToJson(this);
}
