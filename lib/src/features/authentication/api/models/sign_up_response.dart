import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_response.g.dart';

@JsonSerializable()
class SignupResponse {
  SignupResponse(this.message);

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);

  String message;

  Map<String, dynamic> toJson() => _$SignupResponseToJson(this);
}
