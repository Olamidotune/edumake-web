// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_subject_test_result_grade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchSubjectTestResultGrade _$FetchSubjectTestResultGradeFromJson(
        Map<String, dynamic> json) =>
    FetchSubjectTestResultGrade(
      grade: (json['grade'] as num).toDouble(),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$FetchSubjectTestResultGradeToJson(
        FetchSubjectTestResultGrade instance) =>
    <String, dynamic>{
      'grade': instance.grade,
      '_id': instance.id,
    };
