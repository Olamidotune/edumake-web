import 'package:json_annotation/json_annotation.dart';

part 'fetch_subject_exam_result_class.g.dart';

@JsonSerializable()
class FetchSubjectExamResultClassId {
  FetchSubjectExamResultClassId({
    required this.id,
    required this.name,
  });

  factory FetchSubjectExamResultClassId.fromJson(Map<String, dynamic> json) =>
      _$FetchSubjectExamResultClassIdFromJson(json);
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'name')
  final String name;
  Map<String, dynamic> toJson() => _$FetchSubjectExamResultClassIdToJson(this);
}
