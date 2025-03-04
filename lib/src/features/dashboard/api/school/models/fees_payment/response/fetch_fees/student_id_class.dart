import 'package:json_annotation/json_annotation.dart';

part 'student_id_class.g.dart';

@JsonSerializable()
class StudentIdClass {
  StudentIdClass({
    this.feesResponseClass,
  });

  factory StudentIdClass.fromJson(Map<String, dynamic> json) =>
      _$StudentIdClassFromJson(json);

  @JsonKey(name: 'feesResponseClass')
  final Class? feesResponseClass;

  Map<String, dynamic> toJson() => _$StudentIdClassToJson(this);
}

// @JsonSerializable()
// class Class {
//   Class({
//     required this.id,
//     required this.school,
//     required this.name,
//     required this.slug,
//     required this.isDeleted,
//     required this.v,
//     required this.createdAt,
//     required this.updatedAt,
//   });

//   factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);
//   @JsonKey(name: '_id')
//   final String id;

//   @JsonKey(name: 'school')
//   final String school;

//   @JsonKey(name: 'name')
//   final String name;

//   @JsonKey(name: 'slug')
//   final String slug;

//   @JsonKey(name: 'isDeleted')
//   final bool isDeleted;

//   @JsonKey(name: '__v')
//   final int v;

//   @JsonKey(name: 'createdAt')
//   final DateTime createdAt;

//   @JsonKey(name: 'updatedAt')
//   final DateTime updatedAt;

//   Map<String, dynamic> toJson() => _$ClassToJson(this);
// }

@JsonSerializable()
class Class {
  Class({
    this.id,
    this.school,
    this.name,
    this.slug,
    this.isDeleted,
    this.v,
    this.createdAt,
    this.updatedAt,
  });

//  factory StudentIdClass.fromJson(Map<String, dynamic>? json) =>
//       json == null ? StudentIdClass() : _$StudentIdClassFromJson(json

  factory Class.fromJson(Map<String, dynamic>? json) =>
      json == null ? Class() : _$ClassFromJson(json);

  //   factory StudentId.fromJson(Map<String, dynamic>? json) =>
  // json == null ? StudentId() : _$StudentIdFromJson(json);

  @JsonKey(name: '_id')
  String? id;

  @JsonKey(name: 'school')
  String? school;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'slug')
  String? slug;

  @JsonKey(name: 'isDeleted')
  bool? isDeleted;

  @JsonKey(name: '__v')
  int? v;

  @JsonKey(name: 'createdAt')
  DateTime? createdAt;

  @JsonKey(name: 'updatedAt')
  DateTime? updatedAt;

  Map<String, dynamic> toJson() => _$ClassToJson(this);
}
