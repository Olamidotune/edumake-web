import 'package:json_annotation/json_annotation.dart';

part 'get_request_students.g.dart';

@JsonSerializable()
class Student {
  Student({
    required this.id,
    required this.studentClass,
    required this.name,
    required this.school,
    required this.guardians,
    required this.isDeleted,
    required this.v,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);

  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'class')
  final String studentClass;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'school')
  final String school;

  @JsonKey(name: 'guardians')
  final List<dynamic> guardians;

  @JsonKey(name: 'isDeleted')
  final bool isDeleted;

  @JsonKey(name: '__v')
  final int v;

  @JsonKey(name: 'createdAt')
  final DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  Map<String, dynamic> toJson() => _$StudentToJson(this);
}
