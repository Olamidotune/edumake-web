// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_response_grade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestResponseGrade _$TestResponseGradeFromJson(Map<String, dynamic> json) =>
    TestResponseGrade(
      grade: (json['grade'] as num).toDouble(),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$TestResponseGradeToJson(TestResponseGrade instance) =>
    <String, dynamic>{
      'grade': instance.grade,
      '_id': instance.id,
    };
