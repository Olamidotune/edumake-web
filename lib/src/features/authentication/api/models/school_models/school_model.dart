import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_model.g.dart';

@JsonSerializable()
class SchoolModel {
  SchoolModel(
    this.admin,
    this.schoolName,
    this.schoolAddress,
    this.schoolEmail,
    this.schoolType,
    this.classNumberRange,
    this.studentNumberRange,
    this.teacherNumberRange,
    this.schoolID, {
    this.createdAt,
    this.updatedAt,
  });

  factory SchoolModel.fromJson(Map<String, dynamic> json) =>
      _$SchoolModelFromJson(json);

  String? admin;
  String? schoolName;
  String? schoolAddress;
  String? schoolEmail;
  String? schoolType;
  String? classNumberRange;
  String? studentNumberRange;
  String? teacherNumberRange;
  @JsonKey(name: '_id')
  String? schoolID;
  DateTime? createdAt;
  DateTime? updatedAt;

  Map<String, dynamic> toJson() => _$SchoolModelToJson(this);
}
