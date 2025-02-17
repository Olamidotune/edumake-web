import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_result_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'test_response.g.dart';

@JsonSerializable()
class TestResponse {
  TestResponse({
    required this.success,
    required this.message,
    required this.data,
    required this.statusCode,
  });

  factory TestResponse.fromJson(Map<String, dynamic> json) =>
      _$TestResponseFromJson(json);

  @JsonKey(name: 'success')
  bool success;
  @JsonKey(name: 'message')
  String message;
  @JsonKey(name: 'data')
  TestResult data;
  @JsonKey(name: 'statusCode')
  int statusCode;

  Map<String, dynamic> toJson() => _$TestResponseToJson(this);
}
