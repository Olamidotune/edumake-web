import 'package:json_annotation/json_annotation.dart';

part 'time_table_classes.g.dart';

@JsonSerializable()
class TimeTableClasses {
  TimeTableClasses({
    required this.id,
    required this.name,
  });
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;

  factory TimeTableClasses.fromJson(Map<String, dynamic> json) =>
      _$TimeTableClassesFromJson(json);
  Map<String, dynamic> toJson() => _$TimeTableClassesToJson(this);
}
