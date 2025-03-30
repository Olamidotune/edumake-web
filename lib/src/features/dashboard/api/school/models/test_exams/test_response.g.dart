// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestResponse _$TestResponseFromJson(Map<String, dynamic> json) => TestResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: TestResult.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$TestResponseToJson(TestResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };
