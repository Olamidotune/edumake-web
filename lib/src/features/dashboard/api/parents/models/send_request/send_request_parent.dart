import 'package:json_annotation/json_annotation.dart';

part 'send_request_parent.g.dart';

@JsonSerializable()
class SendRequestParent {
  SendRequestParent({
    required this.id,
    required this.relationship,
  });

  factory SendRequestParent.fromJson(Map<String, dynamic> json) =>
      _$SendRequestParentFromJson(json);
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'relationship')
  String relationship;
  Map<String, dynamic> toJson() => _$SendRequestParentToJson(this);
}
