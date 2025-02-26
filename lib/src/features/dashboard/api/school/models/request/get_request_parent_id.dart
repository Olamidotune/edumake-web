import 'package:json_annotation/json_annotation.dart';

part 'get_request_parent_id.g.dart';

@JsonSerializable()
class GetRequestParentId {
  GetRequestParentId({
    required this.id,
    required this.parentEmail,
    required this.parentFirstName,
    required this.parentIdNumber,
    required this.parentLastName,
    required this.parentPhoneNumber,
  });

  factory GetRequestParentId.fromJson(Map<String, dynamic> json) =>
      _$GetRequestParentIdFromJson(json);

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

  Map<String, dynamic> toJson() => _$GetRequestParentIdToJson(this);

  String? get fullName {
    final fullName = '$parentFirstName $parentLastName';
    return fullName == ' ' ? null : fullName;
  }
}
