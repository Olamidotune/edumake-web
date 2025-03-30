// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_result_grade_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Grade _$GradeFromJson(Map<String, dynamic> json) => Grade(
      grade: (json['grade'] as num).toDouble(),
      studentId: json['studentId'] as String,
    );

Map<String, dynamic> _$GradeToJson(Grade instance) => <String, dynamic>{
      'grade': instance.grade,
      'studentId': instance.studentId,
    };
