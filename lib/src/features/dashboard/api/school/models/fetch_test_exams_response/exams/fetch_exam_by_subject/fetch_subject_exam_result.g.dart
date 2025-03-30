// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_subject_exam_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchSubjectExamResult _$FetchSubjectExamResultFromJson(
        Map<String, dynamic> json) =>
    FetchSubjectExamResult(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              FetchSubjectExamResultDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String,
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$FetchSubjectExamResultToJson(
        FetchSubjectExamResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'cursor': instance.cursor,
      'statusCode': instance.statusCode,
    };
