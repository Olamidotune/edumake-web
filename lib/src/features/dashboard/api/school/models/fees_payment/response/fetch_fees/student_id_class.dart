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

  factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);

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
