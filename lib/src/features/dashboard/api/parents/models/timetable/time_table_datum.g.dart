// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_table_datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeTableDatum _$TimeTableDatumFromJson(Map<String, dynamic> json) =>
    TimeTableDatum(
      id: json['_id'] as String,
      title: json['title'] as String,
      classes: (json['classes'] as List<dynamic>)
          .map((e) => TimeTableClasses.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdBy: json['createdBy'] as String,
      school: json['school'] as String,
      fileUrl: json['fileUrl'] as String,
      isDeleted: json['isDeleted'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$TimeTableDatumToJson(TimeTableDatum instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'classes': instance.classes,
      'createdBy': instance.createdBy,
      'school': instance.school,
      'fileUrl': instance.fileUrl,
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };
