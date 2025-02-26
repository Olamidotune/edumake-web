import 'package:edumake_frontend/src/features/dashboard/api/school/models/request/get_request_parent_id.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_request_parent.g.dart';

@JsonSerializable()
class Parent {
  Parent({
    required this.id,
    required this.relationship,
  });

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);

  Map<String, dynamic> toJson() => _$ParentToJson(this);

  @JsonKey(name: 'id')
  final GetRequestParentId id;
  @JsonKey(name: 'relationship')
  final String relationship;
}
