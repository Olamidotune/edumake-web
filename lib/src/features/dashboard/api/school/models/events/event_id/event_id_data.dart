import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_class.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_created_by.dart';

import 'package:json_annotation/json_annotation.dart';

part 'event_id_data.g.dart';

@JsonSerializable()
class EventIdData {
  EventIdData({
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

  factory EventIdData.fromJson(Map<String, dynamic> json) =>
      _$EventIdDataFromJson(json);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'details')
  final String details;
  @JsonKey(name: 'associatedEvents')
  final List<dynamic> associatedEvents;
  @JsonKey(name: 'classes')
  final List<EventClass> classes;
  @JsonKey(name: 'school')
  final String school;
  @JsonKey(name: 'imageUrl')
  final String imageUrl;
  @JsonKey(name: 'createdBy')
  final EventCreatedBy createdBy;
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  @JsonKey(name: '__v')
  final int v;
  Map<String, dynamic> toJson() => _$EventIdDataToJson(this);
}
