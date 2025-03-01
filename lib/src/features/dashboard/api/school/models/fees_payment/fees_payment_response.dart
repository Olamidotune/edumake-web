import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/fees_payment_datum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fees_payment_response.g.dart';

@JsonSerializable()
class FeesPaymentResponse {
  FeesPaymentResponse({
    required this.success,
    required this.message,
    required this.data,
    required this.statusCode,
  });

  factory FeesPaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$FeesPaymentResponseFromJson(json);
  @JsonKey(name: 'success')
  final bool success;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'data')
  final FeesPaymentDatum data;

  @JsonKey(name: 'statusCode')
  final int statusCode;
  Map<String, dynamic> toJson() => _$FeesPaymentResponseToJson(this);
}
