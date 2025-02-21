import 'package:edumake_frontend/src/features/dashboard/api/school/models/fetch_test_exams_response/exams/fetch_exam_response_datum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fetch_exam_response.g.dart';

@JsonSerializable()
class FetchExamResponse {
  FetchExamResponse({
    required this.success,
    required this.message,
    required this.data,
    required this.cursor,
    required this.statusCode,
  });

  factory FetchExamResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchExamResponseFromJson(json);

  @JsonKey(name: 'success')
  final bool success;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'data')
  final List<FetchExamResponseDatum> data;

  @JsonKey(name: 'cursor')
  final String cursor;

  @JsonKey(name: 'statusCode')
  final int statusCode;

  Map<String, dynamic> toJson() => _$FetchExamResponseToJson(this);
}
