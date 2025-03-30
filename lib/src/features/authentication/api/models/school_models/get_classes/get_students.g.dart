// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_students.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetStudentsModel _$GetStudentsModelFromJson(Map<String, dynamic> json) =>
    GetStudentsModel(
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => GetStudentsDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetStudentsModelToJson(GetStudentsModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
