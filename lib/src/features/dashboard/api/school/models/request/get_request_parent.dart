import 'package:json_annotation/json_annotation.dart';

part 'get_request_parent.g.dart';

@JsonSerializable()
class Parent {
  Parent(
    this.parentEmail,
    this.parentFirstName,
    this.parentIdNumber,
    this.parentLastName,
    this.parentPhoneNumber, {
    required this.id,
  });

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'email')
  final String parentEmail;
  @JsonKey(name: 'firstName')
  final String parentFirstName;
  @JsonKey(name: 'idNumber')
  final String parentIdNumber;
  @JsonKey(name: 'lastName')
  final String parentLastName;
  @JsonKey(name: 'phoneNumber')
  final String parentPhoneNumber;

  Map<String, dynamic> toJson() => _$ParentToJson(this);

  String? get fullName {
    final fullName = '$parentFirstName $parentLastName';
    return fullName == ' ' ? null : fullName;
  }
}
