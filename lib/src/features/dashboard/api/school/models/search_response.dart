import 'package:edumake_frontend/src/features/dashboard/api/school/models/search_result.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  SearchResponse({
    required this.message,
    required this.statusCode,
    required this.data,
  });

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);

  final String message;
  final int statusCode;
  final List<SearchResult> data;

  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);
}
