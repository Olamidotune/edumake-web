import 'package:edumake_frontend/src/features/dashboard/api/school/models/fetch_test_exams_response/fetch_test_response_datum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fetch_test_response.g.dart';

@JsonSerializable()
class FetchTestResponse {
  FetchTestResponse({
    required this.success,
    required this.message,
    required this.data,
    required this.cursor,
    required this.statusCode,
  });

  factory FetchTestResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchTestResponseFromJson(json);

  @JsonKey(name: 'success')
  final bool success;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'data')
  final List<FetchTestResponseDatum> data;

  @JsonKey(name: 'cursor')
  final String cursor;

  @JsonKey(name: 'statusCode')
  final int statusCode;

  Map<String, dynamic> toJson() => _$FetchTestResponseToJson(this);
}
