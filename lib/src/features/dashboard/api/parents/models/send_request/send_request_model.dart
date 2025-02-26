import 'package:edumake_frontend/src/features/dashboard/api/parents/models/send_request/send_request_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send_request_model.g.dart';

@JsonSerializable()
class SendRequestModel {
  SendRequestModel({
    required this.success,
    required this.message,
    required this.statusCode,
    required this.data,
  });
  factory SendRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SendRequestModelFromJson(json);

  @JsonKey(name: 'success')
  bool success;

  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'statusCode')
  int statusCode;

  @JsonKey(name: 'data')
  SendRequestData data;

  Map<String, dynamic> toJson() => _$SendRequestModelToJson(this);
}
