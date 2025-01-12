import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_model.g.dart';

@JsonSerializable()
class VerifyOtpModel {
  VerifyOtpModel({required this.message});

  factory VerifyOtpModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpModelFromJson(json);

  String message;

  Map<String, dynamic> toJson() => _$VerifyOtpModelToJson(this);
}
