import 'package:json_annotation/json_annotation.dart';

part 'get_request_students_class.g.dart';

@JsonSerializable()
class StudentClass {
  StudentClass({
    required this.id,
    required this.studentSchool,
    required this.className,
    required this.isDeleted,
    required this.v,
    required this.createdAt,
    required this.updatedAt,
    this.slug,
  });

  factory StudentClass.fromJson(Map<String, dynamic> json) =>
      _$StudentClassFromJson(json);

  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'school')
  final String studentSchool;

  @JsonKey(name: 'name')
  final String className;

  @JsonKey(name: 'isDeleted')
  final bool isDeleted;

  @JsonKey(name: '__v')
  final int v;

  @JsonKey(name: 'createdAt')
  final DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  @JsonKey(name: 'slug')
  String? slug;
  Map<String, dynamic> toJson() => _$StudentClassToJson(this);
}
