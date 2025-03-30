// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_subject_for_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSubjectForStudent _$GetSubjectForStudentFromJson(
        Map<String, dynamic> json) =>
    GetSubjectForStudent(
      success: json['success'] as bool,
      message: json['message'] as String,
      statusCode: (json['statusCode'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              GetSubjectForStudentDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetSubjectForStudentToJson(
        GetSubjectForStudent instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'statusCode': instance.statusCode,
      'data': instance.data,
    };
