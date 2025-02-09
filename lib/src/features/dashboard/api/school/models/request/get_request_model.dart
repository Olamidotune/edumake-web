import 'package:edumake_frontend/src/features/dashboard/api/school/models/request/get_request_datum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_request_model.g.dart';

@JsonSerializable()
class GetRequestModel {
  GetRequestModel({
    required this.success,
    required this.message,
    required this.statusCode,
    required this.data,
  });

  factory GetRequestModel.fromJson(Map<String, dynamic> json) =>
      _$GetRequestModelFromJson(json);
  @JsonKey(name: 'success')
  final bool success;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'statusCode')
  final int statusCode;

  @JsonKey(name: 'data')
  final List<GetRequestDatum> data;
  Map<String, dynamic> toJson() => _$GetRequestModelToJson(this);
}
