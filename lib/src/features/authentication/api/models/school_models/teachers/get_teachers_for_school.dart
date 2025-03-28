import 'package:json_annotation/json_annotation.dart';

part 'get_teachers_for_school.g.dart';

@JsonSerializable()
class GetTeachersForSchool {
  GetTeachersForSchool({
    this.success,
    this.message,
    this.statusCode,
    this.data,
  });

  factory GetTeachersForSchool.fromJson(Map<String, dynamic> json) =>
      _$GetTeachersForSchoolFromJson(json);
  final bool? success;
  final String? message;
  final int? statusCode;
  final List<GetTeachersForSchoolDatum>? data;
  Map<String, dynamic> toJson() => _$GetTeachersForSchoolToJson(this);
}

@JsonSerializable()
class GetTeachersForSchoolDatum {
  GetTeachersForSchoolDatum({
    this.id,
    this.email,
    this.password,
    this.firstName,
    this.lastName,
    this.role,
    this.isEmailVerified,
    this.hasOnboarded,
    this.classes,
    this.subjects,
    this.note,
    this.school,
    this.hasActiveSubscription,
    this.isDeleted,
    this.subscriptionStartDate,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory GetTeachersForSchoolDatum.fromJson(Map<String, dynamic> json) =>
      _$GetTeachersForSchoolDatumFromJson(json);
  final String? id;
  final String? email;
  final String? password;
  final String? firstName;
  final String? lastName;
  final String? role;
  final bool? isEmailVerified;
  final bool? hasOnboarded;
  final List<String>? classes;
  final List<String>? subjects;
  final String? note;
  final String? school;
  final bool? hasActiveSubscription;
  final bool? isDeleted;
  @JsonKey(name: 'subscriptionStartDate')
  final DateTime? subscriptionStartDate;
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: '__v')
  final int? v;
  Map<String, dynamic> toJson() => _$GetTeachersForSchoolDatumToJson(this);
}
