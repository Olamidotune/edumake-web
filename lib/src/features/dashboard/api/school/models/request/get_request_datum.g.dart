// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_request_datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRequestDatum _$GetRequestDatumFromJson(Map<String, dynamic> json) =>
    GetRequestDatum(
      parent: Parent.fromJson(json['parent'] as Map<String, dynamic>),
      id: json['_id'] as String,
      student: Student.fromJson(json['student'] as Map<String, dynamic>),
      status: json['status'] as String,
      school: json['school'] as String,
      isDeleted: json['isDeleted'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$GetRequestDatumToJson(GetRequestDatum instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      '_id': instance.id,
      'student': instance.student,
      'status': instance.status,
      'school': instance.school,
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };
