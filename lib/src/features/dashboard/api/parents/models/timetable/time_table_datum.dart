import 'package:edumake_frontend/src/features/dashboard/api/parents/models/timetable/time_table_classes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'time_table_datum.g.dart';

@JsonSerializable()
class TimeTableDatum {
  TimeTableDatum({
    required this.id,
    required this.title,
    required this.classes,
    required this.createdBy,
    required this.school,
    required this.fileUrl,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory TimeTableDatum.fromJson(Map<String, dynamic> json) =>
      _$TimeTableDatumFromJson(json);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'classes')
  final List<TimeTableClasses> classes;
  @JsonKey(name: 'createdBy')
  final String createdBy;
  @JsonKey(name: 'school')
  final String school;
  @JsonKey(name: 'fileUrl')
  final String fileUrl;
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  @JsonKey(name: '__v')
  final int v;

  Map<String, dynamic> toJson() => _$TimeTableDatumToJson(this);
}
