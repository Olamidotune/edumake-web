import 'package:json_annotation/json_annotation.dart';

part 'get_request_parent.g.dart';

@JsonSerializable()
class Parent {
  Parent({
    required this.id,
  });

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);
  @JsonKey(name: '_id')
  final String id;
  Map<String, dynamic> toJson() => _$ParentToJson(this);
}
