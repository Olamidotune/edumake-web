// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventResponse _$EventResponseFromJson(Map<String, dynamic> json) =>
    EventResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: EventData.fromJson(json['data'] as Map<String, dynamic>),
      cursor: json['cursor'] as String?,
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$EventResponseToJson(EventResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'cursor': instance.cursor,
      'statusCode': instance.statusCode,
    };
