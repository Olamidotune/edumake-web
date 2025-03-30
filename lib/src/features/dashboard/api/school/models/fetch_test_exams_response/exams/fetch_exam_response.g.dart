// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_exam_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchExamResponse _$FetchExamResponseFromJson(Map<String, dynamic> json) =>
    FetchExamResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map(
              (e) => FetchExamResponseDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String,
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$FetchExamResponseToJson(FetchExamResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'cursor': instance.cursor,
      'statusCode': instance.statusCode,
    };
