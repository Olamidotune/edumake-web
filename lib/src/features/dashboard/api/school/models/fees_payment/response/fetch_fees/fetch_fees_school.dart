import 'package:json_annotation/json_annotation.dart';

part 'fetch_fees_school.g.dart';

@JsonSerializable()
class School {
  School({required this.id});

  factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);
  @JsonKey(name: '_id')
  String id;
  Map<String, dynamic> toJson() => _$SchoolToJson(this);
}
