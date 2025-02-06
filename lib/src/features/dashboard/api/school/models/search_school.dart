import 'package:json_annotation/json_annotation.dart';

part 'search_school.g.dart';

@JsonSerializable()
class School {
  School({
    required this.id,
    required this.schoolName,
  });

  factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);
  @JsonKey(name: '_id')
  final String id;
  final String schoolName;

  Map<String, dynamic> toJson() => _$SchoolToJson(this);
}
