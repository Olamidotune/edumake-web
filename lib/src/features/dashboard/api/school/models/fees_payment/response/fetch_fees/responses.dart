import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/fetch_fees/fetch_fees_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'responses.g.dart';

@JsonSerializable()
class FeesResponse {
  FeesResponse({
    this.success,
    this.message,
    this.data,
    this.statusCode,
  });

  factory FeesResponse.fromJson(Map<String, dynamic> json) =>
      _$FeesResponseFromJson(json);
  @JsonKey(name: 'success')
  bool? success;

  @JsonKey(name: 'message')
  String? message;

  @JsonKey(name: 'data')
  List<FetchResponseDatum>? data;

  @JsonKey(name: 'statusCode')
  int? statusCode;
  Map<String, dynamic> toJson() => _$FeesResponseToJson(this);
}
