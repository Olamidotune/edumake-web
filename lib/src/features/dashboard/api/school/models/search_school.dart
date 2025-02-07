import 'package:json_annotation/json_annotation.dart';

part 'search_school.g.dart';

@JsonSerializable()
class SchoolDetails {
  SchoolDetails({
    required this.id,
    required this.schoolName,
  });

  factory SchoolDetails.fromJson(Map<String, dynamic> json) =>
      _$SchoolDetailsFromJson(json);
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'schoolName')
  final String schoolName;

  Map<String, dynamic> toJson() => _$SchoolDetailsToJson(this);
}
