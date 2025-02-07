import 'package:edumake_frontend/src/features/dashboard/api/school/models/search_class.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/search_school.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_result.g.dart';

@JsonSerializable()
class SearchResult {
  SearchResult({
    required this.id,
    required this.studentName,
    required this.school,
    required this.guardians,
    required this.isDeleted,
    required this.classInfo,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
  });
  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'class')
  final Class classInfo;
  @JsonKey(name: 'name')
  final String studentName;
  @JsonKey(name: 'school')
  final SchoolDetails school;
  final List<dynamic> guardians;
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  @JsonKey(name: '__v')
  final int version;
  DateTime createdAt;
  DateTime updatedAt;

  Map<String, dynamic> toJson() => _$SearchResultToJson(this);
}
