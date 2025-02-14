import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_id/event_id_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_id_response.g.dart';

@JsonSerializable()
class EventIdResponse {
  EventIdResponse({
    required this.success,
    required this.message,
    required this.data,
    required this.statusCode,
  });

  factory EventIdResponse.fromJson(Map<String, dynamic> json) =>
      _$EventIdResponseFromJson(json);

  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  EventIdData data;
  @JsonKey(name: 'statusCode')
  int statusCode;

  Map<String, dynamic> toJson() => _$EventIdResponseToJson(this);
}
