import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/upcoming_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_data.g.dart';

@JsonSerializable()
class EventData {
  EventData({
    required this.upcomingEvents,
    required this.previousEvents,
  });

  factory EventData.fromJson(Map<String, dynamic> json) =>
      _$EventDataFromJson(json);

  @JsonKey(name: 'upcoming_events')
  final List<UpcomingEvent> upcomingEvents;

  @JsonKey(name: 'previous_events')
  final List<dynamic> previousEvents;
  Map<String, dynamic> toJson() => _$EventDataToJson(this);
}
