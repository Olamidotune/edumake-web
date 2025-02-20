import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_exams_response/test_response_datum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'test_response.g.dart';

@JsonSerializable()
class TestResponse {
  TestResponse({
    required this.success,
    required this.message,
    required this.data,
    required this.cursor,
    required this.statusCode,
  });

  factory TestResponse.fromJson(Map<String, dynamic> json) =>
      _$TestResponseFromJson(json);

  @JsonKey(name: 'success')
  final bool success;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'data')
  final List<TestResponseDatum> data;

  @JsonKey(name: 'cursor')
  final String cursor;

  @JsonKey(name: 'statusCode')
  final int statusCode;

  Map<String, dynamic> toJson() => _$TestResponseToJson(this);
}
