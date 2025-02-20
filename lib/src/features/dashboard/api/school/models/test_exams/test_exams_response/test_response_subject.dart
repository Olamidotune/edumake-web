import 'package:json_annotation/json_annotation.dart';

part 'test_response_subject.g.dart';

@JsonSerializable()
class TestResponseSubject {
  TestResponseSubject({
    required this.id,
    required this.name,
  });

  factory TestResponseSubject.fromJson(Map<String, dynamic> json) =>
      _$TestResponseSubjectFromJson(json);
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'name')
  final String name;

  Map<String, dynamic> toJson() => _$TestResponseSubjectToJson(this);
}
