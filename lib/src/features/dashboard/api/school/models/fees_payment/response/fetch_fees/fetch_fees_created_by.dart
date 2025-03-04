import 'package:json_annotation/json_annotation.dart';

part 'fetch_fees_created_by.g.dart';

@JsonSerializable()
class CreateBy {
  CreateBy({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  factory CreateBy.fromJson(Map<String, dynamic> json) =>
      _$CreateByFromJson(json);
  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'email')
  String email;

  @JsonKey(name: 'firstName')
  String firstName;

  @JsonKey(name: 'lastName')
  String lastName;
  Map<String, dynamic> toJson() => _$CreateByToJson(this);
}
