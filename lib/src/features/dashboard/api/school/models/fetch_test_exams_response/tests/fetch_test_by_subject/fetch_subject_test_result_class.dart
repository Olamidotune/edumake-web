import 'package:json_annotation/json_annotation.dart';

part 'fetch_subject_test_result_class.g.dart';

@JsonSerializable()
class FetchSubjectTestResultClassId {
  FetchSubjectTestResultClassId({
    required this.id,
    required this.name,
  });

  factory FetchSubjectTestResultClassId.fromJson(Map<String, dynamic> json) =>
      _$FetchSubjectTestResultClassIdFromJson(json);
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'name')
  final String name;
  Map<String, dynamic> toJson() => _$FetchSubjectTestResultClassIdToJson(this);
}
