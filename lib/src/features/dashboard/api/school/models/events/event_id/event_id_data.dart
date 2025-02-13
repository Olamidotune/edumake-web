import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_created_by.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_id/event_id_class.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_id_data.g.dart';

@JsonSerializable()
class EventIdData {
  String id;
  String title;
  DateTime date;
  String details;
  List<dynamic> associatedEvents;
  List<EventIdClass> classes;
  String school;
  String imageUrl;
  EventCreatedBy createdBy;
  bool isDeleted;
  DateTime createdAt;
  DateTime updatedAt;
  @JsonKey(name: '__v')
  int v;

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
  Map<String, dynamic> toJson() => _$EventIdDataToJson(this);
}
