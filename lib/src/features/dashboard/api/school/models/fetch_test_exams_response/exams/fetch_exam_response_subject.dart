import 'package:json_annotation/json_annotation.dart';

part 'fetch_exam_response_subject.g.dart';

@JsonSerializable()
class FetchExamResponseSubject {
  FetchExamResponseSubject({
    required this.id,
    required this.name,
  });

  factory FetchExamResponseSubject.fromJson(Map<String, dynamic> json) =>
      _$FetchExamResponseSubjectFromJson(json);
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'name')
  final String name;

  Map<String, dynamic> toJson() => _$FetchExamResponseSubjectToJson(this);
}
