// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_result_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestResultRequest _$TestResultRequestFromJson(Map<String, dynamic> json) =>
    TestResultRequest(
      title: json['title'] as String,
      subjectId: json['subjectId'] as String,
      classId: json['classId'] as String,
      dateWritten: json['dateWritten'] as String,
      grades: (json['grades'] as List<dynamic>)
          .map((e) => Grade.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TestResultRequestToJson(TestResultRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subjectId': instance.subjectId,
      'classId': instance.classId,
      'dateWritten': instance.dateWritten,
      'grades': instance.grades,
    };
