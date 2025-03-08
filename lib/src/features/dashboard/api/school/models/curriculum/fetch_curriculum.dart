import 'package:json_annotation/json_annotation.dart';

part 'fetch_curriculum.g.dart';

// @JsonSerializable()
// class FetchCurriculum {
//   FetchCurriculum({
//     required this.success,
//     required this.message,
//     required this.data,
//     required this.cursor,
//     required this.statusCode,
//   });

//   factory FetchCurriculum.fromJson(Map<String, dynamic> json) =>
//       _$FetchCurriculumFromJson(json);
//   final bool success;
//   final String message;
//   final List<FetchCurriculumFetchCurriculumDatum> data;
//   final String cursor;
//   final int statusCode;
//   Map<String, dynamic> toJson() => _$FetchCurriculumToJson(this);
// }

// @JsonSerializable()
// class FetchCurriculumFetchCurriculumDatum {
//   FetchCurriculumFetchCurriculumDatum({
//     required this.id,
//     required this.classes,
//     required this.fetchCurriculumFetchCurriculumSubjectId,
//     required this.school,
//     required this.text,
//     required this.createdBy,
//     required this.isDeleted,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.v,
//   });

//   factory FetchCurriculumFetchCurriculumDatum.fromJson(Map<String, dynamic> json) =>
//       _$FetchCurriculumFetchCurriculumDatumFromJson(json);
//   final String id;
//   final List<String> classes;
//   final FetchCurriculumFetchCurriculumSubjectId fetchCurriculumFetchCurriculumSubjectId;
//   final String school;
//   final String text;
//   final String createdBy;
//   final bool isDeleted;
//   final DateTime createdAt;
//   final DateTime updatedAt;
//   @JsonKey(name: '__v')
//   final int v;
//   Map<String, dynamic> toJson() => _$FetchCurriculumFetchCurriculumDatumToJson(this);
// }

// @JsonSerializable()
// class FetchCurriculumFetchCurriculumSubjectId {
//   FetchCurriculumFetchCurriculumSubjectId({
//     required this.id,
//     required this.classes,
//     required this.name,
//     required this.slug,
//     required this.school,
//     required this.note,
//     required this.isDeleted,
//     required this.v,
//     required this.createdAt,
//     required this.updatedAt,
//   });

//   factory FetchCurriculumFetchCurriculumSubjectId.fromJson(Map<String, dynamic> json) =>
//       _$FetchCurriculumFetchCurriculumSubjectIdFromJson(json);
//   final String id;
//   final List<String> classes;
//   final String name;
//   final String slug;
//   final String school;
//   final String note;
//   final bool isDeleted;
//   final DateTime createdAt;
//   final DateTime updatedAt;
//   @JsonKey(name: '__v')
//   final int v;

//   Map<String, dynamic> toJson() => _$FetchCurriculumFetchCurriculumSubjectIdToJson(this);
// }

@JsonSerializable()
class FetchCurriculum {
  FetchCurriculum({
    required this.success,
    required this.message,
    required this.data,
    required this.statusCode,
    this.cursor,
  });

  factory FetchCurriculum.fromJson(Map<String, dynamic> json) =>
      _$FetchCurriculumFromJson(json);
  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final List<FetchCurriculumDatum> data;
  @JsonKey(name: 'cursor')
  final String? cursor;
  @JsonKey(name: 'statusCode')
  final int statusCode;
  Map<String, dynamic> toJson() => _$FetchCurriculumToJson(this);
}

@JsonSerializable()
class FetchCurriculumDatum {
  FetchCurriculumDatum({
    required this.id,
    required this.classes,
    required this.school,
    required this.text,
    required this.createdBy,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    this.fetchCurriculumSubjectId,
  });

  factory FetchCurriculumDatum.fromJson(Map<String, dynamic> json) =>
      _$FetchCurriculumDatumFromJson(json);
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'classes')
  final List<String> classes;
  @JsonKey(name: 'FetchCurriculumSubjectId')
  final FetchCurriculumSubjectId? fetchCurriculumSubjectId;
  @JsonKey(name: 'school')
  final String school;
  @JsonKey(name: 'text')
  final String text;
  @JsonKey(name: 'createdBy')
  final String createdBy;
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
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
  Map<String, dynamic> toJson() => _$FetchCurriculumSubjectIdToJson(this);
}
