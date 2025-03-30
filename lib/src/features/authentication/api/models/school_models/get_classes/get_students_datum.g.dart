// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_students_datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetStudentsDatum _$GetStudentsDatumFromJson(Map<String, dynamic> json) =>
    GetStudentsDatum(
      id: json['_id'] as String,
      name: json['name'] as String,
      school: json['school'] as String,
      guardians: json['guardians'] as List<dynamic>,
      isDeleted: json['isDeleted'] as bool,
    );

Map<String, dynamic> _$GetStudentsDatumToJson(GetStudentsDatum instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'school': instance.school,
      'guardians': instance.guardians,
      'isDeleted': instance.isDeleted,
    };
