import 'package:json_annotation/json_annotation.dart';
import 'package:dio/dio.dart';

part 'event_model.g.dart';

@JsonSerializable()
class EventModel {
  EventModel({
    required this.title,
    required this.date,
    required this.details,
    required this.classes,
    this.associateEvents,
    this.eventImage,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);
  final String title;
  final List<String>? associateEvents;
  final String date;
  final String details;
  final List<String> classes;

  @JsonKey(ignore: true)
  final MultipartFile? eventImage;

  Map<String, dynamic> toJson() => _$EventModelToJson(this);
}
