// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_subject_exam_result_grade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchSubjectExamResultGrade _$FetchSubjectExamResultGradeFromJson(
        Map<String, dynamic> json) =>
    FetchSubjectExamResultGrade(
      grade: (json['grade'] as num).toDouble(),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$FetchSubjectExamResultGradeToJson(
        FetchSubjectExamResultGrade instance) =>
    <String, dynamic>{
      'grade': instance.grade,
      '_id': instance.id,
    };
