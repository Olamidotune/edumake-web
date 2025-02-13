import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_class.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_created_by.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_event.g.dart';

@JsonSerializable()
class UpcomingEvent {
  UpcomingEvent({
    required this.id,
    required this.title,
    required this.date,
    required this.details,
    required this.associatedEvents,
    required this.classes,
    required this.school,
    required this.imageUrl,
    required this.createdBy,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory UpcomingEvent.fromJson(Map<String, dynamic> json) =>
      _$UpcomingEventFromJson(json);
  final String id;
  final String title;
  final DateTime date;
  final String details;
  @JsonKey(name: 'associated_events')
  final List<dynamic> associatedEvents;
  final List<EventClass> classes;
  final String school;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey(name: 'created_by')
  final EventCreatedBy createdBy;
  @JsonKey(name: 'is_deleted')
  final bool isDeleted;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @JsonKey(name: '__v')
  final int v;
  Map<String, dynamic> toJson() => _$UpcomingEventToJson(this);
}
