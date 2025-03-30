// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_grade_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestGradeModel _$TestGradeModelFromJson(Map<String, dynamic> json) =>
    TestGradeModel(
      grade: (json['grade'] as num).toDouble(),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$TestGradeModelToJson(TestGradeModel instance) =>
    <String, dynamic>{
      'grade': instance.grade,
      '_id': instance.id,
    };
