// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fees_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeesPaymentResponse _$FeesPaymentResponseFromJson(Map<String, dynamic> json) =>
    FeesPaymentResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: FeesPaymentDatum.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$FeesPaymentResponseToJson(
        FeesPaymentResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };
