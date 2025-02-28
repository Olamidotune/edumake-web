import 'package:json_annotation/json_annotation.dart';

part 'class_subject_datum.g.dart';

@JsonSerializable()
class FetchClassSubjectsDatum {
  FetchClassSubjectsDatum({
    required this.id,
    required this.classes,
    required this.name,
    required this.slug,
    required this.school,
    required this.note,
    required this.isDeleted,
    required this.v,
    required this.createdAt,
    required this.updatedAt,
  });

  factory FetchClassSubjectsDatum.fromJson(Map<String, dynamic> json) =>
      _$FetchClassSubjectsDatumFromJson(json);

  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'classes')
  final List<String> classes;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'slug')
  final String slug;

  @JsonKey(name: 'school')
  final String school;

  @JsonKey(name: 'note')
  final String? note;

  @JsonKey(name: 'isDeleted')
  final bool isDeleted;

  @JsonKey(name: '__v')
  final int v;

  @JsonKey(name: 'createdAt')
  final DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  Map<String, dynamic> toJson() => _$FetchClassSubjectsDatumToJson(this);
}
