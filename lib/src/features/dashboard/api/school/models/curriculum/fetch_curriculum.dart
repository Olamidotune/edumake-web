import 'package:json_annotation/json_annotation.dart';

part 'fetch_curriculum.g.dart';

@JsonSerializable()
class FetchCurriculum {
  FetchCurriculum({
    required this.success,
    required this.message,
    required this.data,
    required this.cursor,
    required this.statusCode,
  });

  factory FetchCurriculum.fromJson(Map<String, dynamic> json) =>
      _$FetchCurriculumFromJson(json);
  final bool success;
  final String message;
  final List<FetchCurriculumDatum> data;
  final String cursor;
  final int statusCode;
  Map<String, dynamic> toJson() => _$FetchCurriculumToJson(this);
}

@JsonSerializable()
class FetchCurriculumDatum {
  FetchCurriculumDatum({
    required this.id,
    required this.classes,
    required this.fetchCurriculumSubjectId,
    required this.school,
    required this.text,
    required this.createdBy,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory FetchCurriculumDatum.fromJson(Map<String, dynamic> json) =>
      _$FetchCurriculumDatumFromJson(json);
  final String id;
  final List<String> classes;
  final FetchCurriculumSubjectId fetchCurriculumSubjectId;
  final String school;
  final String text;
  final String createdBy;
  final bool isDeleted;
  final DateTime createdAt;
  final DateTime updatedAt;
  @JsonKey(name: '__v')
  final int v;
  Map<String, dynamic> toJson() => _$FetchCurriculumDatumToJson(this);
}

@JsonSerializable()
class FetchCurriculumSubjectId {
  FetchCurriculumSubjectId({
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

  factory FetchCurriculumSubjectId.fromJson(Map<String, dynamic> json) =>
      _$FetchCurriculumSubjectIdFromJson(json);
  final String id;
  final List<String> classes;
  final String name;
  final String slug;
  final String school;
  final String note;
  final bool isDeleted;
  @JsonKey(name: '__v')
  final int v;
  final DateTime createdAt;
  final DateTime updatedAt;
  Map<String, dynamic> toJson() => _$FetchCurriculumSubjectIdToJson(this);
}
