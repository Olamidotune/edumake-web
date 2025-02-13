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
  final bool success;
  final String message;
  final EventData data;
  final String cursor;
  final int statusCode;
  Map<String, dynamic> toJson() => _$EventResponseToJson(this);
}
