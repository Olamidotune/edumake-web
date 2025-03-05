import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/fetch_fees/fetch_fees_guardian.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/fetch_fees/student_id_class.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fetch_fees_student_id.g.dart';

// @JsonSerializable()
// class StudentId {
//   StudentId({
//     required this.id,
//     required this.studentIdClass,
//     required this.name,
//     required this.school,
//     required this.guardians,
//     required this.isDeleted,
//     required this.v,
//     required this.createdAt,
//     required this.updatedAt,
//   });

//   factory StudentId.fromJson(Map<String, dynamic> json) =>
//       _$StudentIdFromJson(json);

//   @JsonKey(name: '_id')
//   String id;

//   @JsonKey(name: 'class')
//   StudentIdClass studentIdClass;

//   @JsonKey(name: 'name')
//   String name;

//   @JsonKey(name: 'school')
//   String school;

//   @JsonKey(name: 'guardians')
//   List<Guardian> guardians;

//   @JsonKey(name: 'isDeleted')
//   bool isDeleted;

//   @JsonKey(name: '__v')
//   int v;

//   @JsonKey(name: 'createdAt')
//   DateTime createdAt;

//   @JsonKey(name: 'updatedAt')
//   DateTime updatedAt;

//   Map<String, dynamic> toJson() => _$StudentIdToJson(this);
// }

@JsonSerializable()
class StudentId {
  StudentId({
    this.id,
    this.studentClass,
    this.name,
    this.school,
    this.guardians,
    this.isDeleted,
    this.v,
    this.createdAt,
    this.updatedAt,
  });

  factory StudentId.fromJson(Map<String, dynamic>? json) =>
      json == null ? StudentId() : _$StudentIdFromJson(json);

  @JsonKey(name: '_id')
  String? id;

  @JsonKey(name: 'class')
  StudentIdClass? studentClass;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'school')
  String? school;

  @JsonKey(name: 'guardians')
  List<Guardian>? guardians;

  @JsonKey(name: 'isDeleted')
  bool? isDeleted;

  @JsonKey(name: '__v')
  int? v;

  @JsonKey(name: 'createdAt')
  DateTime? createdAt;

  @JsonKey(name: 'updatedAt')
  DateTime? updatedAt;

  Map<String, dynamic> toJson() => _$StudentIdToJson(this);
}
