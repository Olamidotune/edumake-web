import 'package:json_annotation/json_annotation.dart';

part 'fetch_fees_guardian.g.dart';

@JsonSerializable()
class Guardian {
  Guardian({this.guardianId, this.relationship, this.id});

  factory Guardian.fromJson(Map<String, dynamic> json) =>
      _$GuardianFromJson(json);
  @JsonKey(name: 'guardianId')
  String? guardianId;

  @JsonKey(name: 'relationship')
  String? relationship;

  @JsonKey(name: '_id')
  String? id;
  Map<String, dynamic> toJson() => _$GuardianToJson(this);
}
