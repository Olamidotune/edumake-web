import 'package:json_annotation/json_annotation.dart';

part 'kyc_response.g.dart';

@JsonSerializable()
class KycResponse {
  KycResponse({
    required this.success,
    required this.message,
    required this.data,
    required this.statusCode,
  });

  /// Factory method to create an instance from a JSON map
  factory KycResponse.fromJson(Map<String, dynamic> json) =>
      _$KycResponseFromJson(json);
  @JsonKey(name: 'success')
  final bool success;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'data')
  final Data data;

  @JsonKey(name: 'statusCode')
  final int statusCode;

  /// Method to convert an instance to JSON map
  Map<String, dynamic> toJson() => _$KycResponseToJson(this);
}

@JsonSerializable()
class Data {
  Data({
    required this.id,
    required this.email,
    required this.role,
    required this.isEmailVerified,
    required this.hasOnboarded,
    required this.classes,
    required this.subjects,
    required this.hasActiveSubscription,
    required this.isDeleted,
    required this.subscriptionStartDate,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    required this.firstName,
    required this.lastName,
    required this.idNumber,
    required this.phoneNumber,
  });

  /// Factory method to create an instance from a JSON map
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'role')
  final String role;

  @JsonKey(name: 'isEmailVerified')
  final bool isEmailVerified;

  @JsonKey(name: 'hasOnboarded')
  final bool hasOnboarded;

  @JsonKey(name: 'classes')
  final List<dynamic> classes;

  @JsonKey(name: 'subjects')
  final List<dynamic> subjects;

  @JsonKey(name: 'hasActiveSubscription')
  final bool hasActiveSubscription;

  @JsonKey(name: 'isDeleted')
  final bool isDeleted;

  @JsonKey(name: 'subscriptionStartDate')
  final DateTime subscriptionStartDate;

  @JsonKey(name: 'createdAt')
  final DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  @JsonKey(name: '__v')
  final int v;

  @JsonKey(name: 'firstName')
  final String firstName;

  @JsonKey(name: 'lastName')
  final String lastName;

  @JsonKey(name: 'idNumber')
  final String idNumber;

  @JsonKey(name: 'phoneNumber')
  final String phoneNumber;

  /// Method to convert an instance to JSON map
  Map<String, dynamic> toJson() => _$DataToJson(this);

  String? get fullName {
    final fullName = '$firstName $lastName';
    return fullName == ' ' ? null : fullName;
  }
}
