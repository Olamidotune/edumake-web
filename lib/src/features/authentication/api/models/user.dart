import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User({
    required this.id,
    required this.email,
    required this.password,
    required this.role,
    required this.isEmailVerified,
    required this.hasOnboarded,
    required this.classes,
    required this.subjects,
    required this.hasActiveSubscription,
    required this.subscriptionStartDate,
    required this.createdAt,
    required this.updatedAt,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.idNumber,
    this.v,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @JsonKey(name: '_id')
  final String id;
  final String email;
  final String password;
  final String role;
  final bool isEmailVerified;
  final bool hasOnboarded;
  final List<String> classes;
  final List<String> subjects;
  final bool hasActiveSubscription;
  final DateTime subscriptionStartDate;
  final DateTime createdAt;
  final DateTime updatedAt;
  @JsonKey(name: '__v')
  final int? v;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String idNumber;
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
