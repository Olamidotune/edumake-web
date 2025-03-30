// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventIdResponse _$EventIdResponseFromJson(Map<String, dynamic> json) =>
    EventIdResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: EventIdData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$EventIdResponseToJson(EventIdResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };
