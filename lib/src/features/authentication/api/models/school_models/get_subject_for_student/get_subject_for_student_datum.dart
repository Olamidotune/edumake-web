import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_subject_for_student_datum.g.dart';

@JsonSerializable()
class GetSubjectForStudentDatum {
  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'classes')
  List<String> classes;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'slug')
  String slug;

  @JsonKey(name: 'school')
  String school;

  @JsonKey(name: 'isDeleted')
  bool isDeleted;

  @JsonKey(name: '__v')
  int v;

  @JsonKey(name: 'createdAt')
  DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  DateTime updatedAt;

  GetSubjectForStudentDatum({
    required this.id,
    required this.classes,
    required this.name,
    required this.slug,
    required this.school,
    required this.isDeleted,
    required this.v,
    required this.createdAt,
    required this.updatedAt,
  });

  factory GetSubjectForStudentDatum.fromJson(Map<String, dynamic> json) =>
      _$GetSubjectForStudentDatumFromJson(json);
  Map<String, dynamic> toJson() => _$GetSubjectForStudentDatumToJson(this);
}
