import 'package:json_annotation/json_annotation.dart';

part 'accept_request_response.g.dart';

@JsonSerializable()
class AcceptRequestResponse {
  AcceptRequestResponse({
    required this.success,
    required this.message,
    required this.statusCode,
    required this.data,
  });

  factory AcceptRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$AcceptRequestResponseFromJson(json);
  @JsonKey(name: 'success')
  final bool success;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'statusCode')
  final int statusCode;

  @JsonKey(name: 'data')
  final AcceptRequestData data;

  Map<String, dynamic> toJson() => _$AcceptRequestResponseToJson(this);
}

@JsonSerializable()
class AcceptRequestData {
  AcceptRequestData({
    required this.parent,
    required this.id,
    required this.student,
    required this.status,
    required this.school,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory AcceptRequestData.fromJson(Map<String, dynamic> json) =>
      _$AcceptRequestDataFromJson(json);
  @JsonKey(name: 'parent')
  final AcceptRequestParent parent;

  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'student')
  final AcceptRequestStudent student;

  @JsonKey(name: 'status')
  final String status;

  @JsonKey(name: 'school')
  final String school;

  @JsonKey(name: 'isDeleted')
  final bool isDeleted;

  @JsonKey(name: 'createdAt')
  final DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  @JsonKey(name: '__v')
  final int v;

  Map<String, dynamic> toJson() => _$AcceptRequestDataToJson(this);
}

@JsonSerializable()
class AcceptRequestParent {
  AcceptRequestParent({
    required this.id,
    required this.relationship,
  });

  factory AcceptRequestParent.fromJson(Map<String, dynamic> json) =>
      _$AcceptRequestParentFromJson(json);
  @JsonKey(name: '_id')
  final Id id;

  @JsonKey(name: 'relationship')
  final String relationship;

  Map<String, dynamic> toJson() => _$AcceptRequestParentToJson(this);
}

@JsonSerializable()
class Id {
  Id({
    required this.id,
    required this.email,
    required this.firstName,
    required this.idNumber,
    required this.lastName,
    required this.phoneNumber,
  });

  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'firstName')
  final String firstName;

  @JsonKey(name: 'idNumber')
  final String idNumber;

  @JsonKey(name: 'lastName')
  final String lastName;

  @JsonKey(name: 'phoneNumber')
  final String phoneNumber;

  Map<String, dynamic> toJson() => _$IdToJson(this);
}

@JsonSerializable()
class AcceptRequestStudent {
  AcceptRequestStudent({
    required this.id,
    required this.name,
    required this.school,
    required this.isDeleted,
    required this.v,
    required this.createdAt,
    required this.updatedAt,
    this.studentClass,
    this.guardians,
    this.slug,
  });

  factory AcceptRequestStudent.fromJson(Map<String, dynamic> json) =>
      _$AcceptRequestStudentFromJson(json);
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'class')
  final AcceptRequestStudentClass? studentClass;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'school')
  final String school;

  @JsonKey(name: 'guardians')
  final List<AcceptRequestGuardian>? guardians;

  @JsonKey(name: 'isDeleted')
  final bool isDeleted;

  @JsonKey(name: '__v')
  final int v;

  @JsonKey(name: 'createdAt')
  final DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  @JsonKey(name: 'slug')
  final String? slug;

  Map<String, dynamic> toJson() => _$AcceptRequestStudentToJson(this);
}

@JsonSerializable()
class AcceptRequestGuardian {
  AcceptRequestGuardian({
    required this.guardianId,
    required this.relationship,
    required this.id,
  });

  factory AcceptRequestGuardian.fromJson(Map<String, dynamic> json) =>
      _$AcceptRequestGuardianFromJson(json);
  @JsonKey(name: '_id')
  final String guardianId;

  @JsonKey(name: 'relationship')
  final String relationship;

  @JsonKey(name: 'id')
  final String id;

  Map<String, dynamic> toJson() => _$AcceptRequestGuardianToJson(this);
}

@JsonSerializable()
class AcceptRequestStudentClass {
  AcceptRequestStudentClass({
    required this.id,
    required this.name,
    required this.slug,
    required this.isDeleted,
    required this.school,
    required this.v,
    required this.createdAt,
    required this.updatedAt,
  });
  factory AcceptRequestStudentClass.fromJson(Map<String, dynamic> json) =>
      _$AcceptRequestStudentClassFromJson(json);
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'slug')
  final String slug;

  @JsonKey(name: 'isDeleted')
  final bool isDeleted;

  @JsonKey(name: 'school')
  final String school;

  @JsonKey(name: '__v')
  final int v;

  @JsonKey(name: 'createdAt')
  final DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  Map<String, dynamic> toJson() => _$AcceptRequestStudentClassToJson(this);
}
