import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_response_message.g.dart';

@JsonSerializable()
class ApiResponseMessage {
  ApiResponseMessage({
    required this.message,
  });

  factory ApiResponseMessage.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseMessageFromJson(json);

  String message;

  Map<String, dynamic> toJson() => _$ApiResponseMessageToJson(this);
}
