import 'package:json_annotation/json_annotation.dart';

import './user.dart';

part 'auth_data.g.dart';

@JsonSerializable()
class AuthData {
  // @JsonKey(name: 'has_pin')
  // bool hasPin = false;

  AuthData(
    this.user,
  );

  factory AuthData.fromJson(Map<String, dynamic> json) =>
      _$AuthDataFromJson(json);

  User user;

  Map<String, dynamic> toJson() => _$AuthDataToJson(this);
}
