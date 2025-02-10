import 'package:json_annotation/json_annotation.dart';

part 'ward_datum_school.g.dart';

@JsonSerializable()
class WardDatumSchool {
  WardDatumSchool({
    required this.id,
    required this.admin,
    required this.schoolName,
    required this.schoolAddress,
    required this.schoolEmail,
    required this.schoolType,
    required this.classNumberRange,
    required this.studentNumberRange,
    required this.teacherNumberRange,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory WardDatumSchool.fromJson(Map<String, dynamic> json) =>
      _$WardDatumSchoolFromJson(json);
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'admin')
  final String admin;

  @JsonKey(name: 'schoolName')
  final String schoolName;

  @JsonKey(name: 'schoolAddress')
  final String schoolAddress;

  @JsonKey(name: 'schoolEmail')
  final String schoolEmail;

  @JsonKey(name: 'schoolType')
  final String schoolType;

  @JsonKey(name: 'classNumberRange')
  final String classNumberRange;

  @JsonKey(name: 'studentNumberRange')
  final String studentNumberRange;

  @JsonKey(name: 'teacherNumberRange')
  final String teacherNumberRange;

  @JsonKey(name: 'isDeleted')
  final bool isDeleted;

  @JsonKey(name: 'createdAt')
  final DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  @JsonKey(name: '__v')
  final int v;
  Map<String, dynamic> toJson() => _$WardDatumSchoolToJson(this);
}
