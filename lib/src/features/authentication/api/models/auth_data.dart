import 'package:edumake_frontend/src/features/authentication/api/models/auth_data_content.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_data.g.dart';

@JsonSerializable()
class AuthData {
  AuthData({
    required this.message,
    required this.data,
  });
  factory AuthData.fromJson(Map<String, dynamic> json) =>
      _$AuthDataFromJson(json);

  final String message;
  final AuthDataContent data;

  Map<String, dynamic> toJson() => _$AuthDataToJson(this);
}
