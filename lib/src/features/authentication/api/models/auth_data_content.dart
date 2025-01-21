import 'package:edumake_frontend/src/features/authentication/api/models/school_models/school_model.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_data_content.g.dart';

@JsonSerializable()
class AuthDataContent {
  AuthDataContent({
    required this.user,
    required this.token,
    this.school,
  });

  factory AuthDataContent.fromJson(Map<String, dynamic> json) =>
      _$AuthDataContentFromJson(json);

  final String token;
  final User user;
  final SchoolModel? school;

  Map<String, dynamic> toJson() => _$AuthDataContentToJson(this);
}
