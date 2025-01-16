import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User(
    this.email,
    this.phoneNumber,
    this.lastName,
    this.firstName,
    this.idNumber, {
    this.id,
    this.hasActiveSubscription = false,
    this.isEmailVerified = true,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @JsonKey(name: '_id')
  String? id;
  String email;
  String? password;
  String? role;
  bool? isEmailVerified;
  bool? hasOnboarded;
  List<String>? classes;
  List<String>? subjects;
  bool? hasActiveSubscription;
  DateTime? subscriptionStartDate;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? idNumber;
  Map<String, dynamic> toJson() => _$UserToJson(this);

  String? get fullName {
    final fullName = "${firstName ?? ""} $lastName";
    return fullName == ' ' ? null : fullName;
  }
}
