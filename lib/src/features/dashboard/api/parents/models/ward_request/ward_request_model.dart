import 'package:edumake_frontend/src/features/dashboard/api/parents/models/ward_request/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ward_request_model.g.dart';

@JsonSerializable()
class GetWardRequestModel {
  GetWardRequestModel({
    required this.success,
    required this.message,
    required this.statusCode,
    required this.data,
  });

  factory GetWardRequestModel.fromJson(Map<String, dynamic> json) =>
      _$GetWardRequestModelFromJson(json);
  @JsonKey(name: 'success')
  bool success;
  @JsonKey(name: 'message')
  String message;
  @JsonKey(name: 'statusCode')
  int statusCode;
  Data data;

  Map<String, dynamic> toJson() => _$GetWardRequestModelToJson(this);
}
