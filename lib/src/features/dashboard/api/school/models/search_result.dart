import 'package:edumake_frontend/src/features/dashboard/api/school/models/search_class.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/search_school.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_result.g.dart';

@JsonSerializable()
class SearchResult {
  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
  SearchResult({
    required this.id,
    required this.name,
    required this.school,
    required this.guardians,
    required this.isDeleted,
    required this.className,
  });

  @JsonKey(name: '_id')
  final String id;
  final Class className;
  final String name;
  final School school;
  final List<dynamic> guardians;
  final bool isDeleted;

  Map<String, dynamic> toJson() => _$SearchResultToJson(this);
}
