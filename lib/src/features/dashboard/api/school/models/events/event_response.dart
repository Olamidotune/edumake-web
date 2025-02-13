import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_response.g.dart';

@JsonSerializable()
class EventResponse {
  EventResponse({
    required this.success,
    required this.message,
    required this.data,
    required this.cursor,
    required this.statusCode,
  });

  factory EventResponse.fromJson(Map<String, dynamic> json) =>
      _$EventResponseFromJson(json);
  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final EventData data;
  @JsonKey(name: 'cursor')
  final String cursor;
  @JsonKey(name: 'statusCode')
  final int statusCode;
  Map<String, dynamic> toJson() => _$EventResponseToJson(this);
}
