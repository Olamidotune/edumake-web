// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_exam_response_grade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchExamResponseGrade _$FetchExamResponseGradeFromJson(
        Map<String, dynamic> json) =>
    FetchExamResponseGrade(
      student: json['student'] as String,
      grade: (json['grade'] as num).toDouble(),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$FetchExamResponseGradeToJson(
        FetchExamResponseGrade instance) =>
    <String, dynamic>{
      'student': instance.student,
      'grade': instance.grade,
      '_id': instance.id,
    };
