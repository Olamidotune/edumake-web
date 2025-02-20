import 'package:json_annotation/json_annotation.dart';

part 'fetch_test_response_subject.g.dart';

@JsonSerializable()
class FetchTestResponseSubject {
  FetchTestResponseSubject({
    required this.id,
    required this.name,
  });

  factory FetchTestResponseSubject.fromJson(Map<String, dynamic> json) =>
      _$FetchTestResponseSubjectFromJson(json);
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'name')
  final String name;

  Map<String, dynamic> toJson() => _$FetchTestResponseSubjectToJson(this);
}
