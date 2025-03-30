// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_request_school.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendRequestSchool _$SendRequestSchoolFromJson(Map<String, dynamic> json) =>
    SendRequestSchool(
      id: json['_id'] as String,
      schoolName: json['schoolName'] as String,
      schoolEmail: json['schoolEmail'] as String,
    );

Map<String, dynamic> _$SendRequestSchoolToJson(SendRequestSchool instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'schoolName': instance.schoolName,
      'schoolEmail': instance.schoolEmail,
    };
