// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_test_response_grade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchTestResponseGrade _$FetchTestResponseGradeFromJson(
        Map<String, dynamic> json) =>
    FetchTestResponseGrade(
      student: json['student'] as String,
      grade: (json['grade'] as num).toDouble(),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$FetchTestResponseGradeToJson(
        FetchTestResponseGrade instance) =>
    <String, dynamic>{
      'student': instance.student,
      'grade': instance.grade,
      '_id': instance.id,
    };
