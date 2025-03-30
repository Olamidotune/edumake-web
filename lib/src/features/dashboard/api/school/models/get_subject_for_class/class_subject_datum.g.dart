// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_subject_datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchClassSubjectsDatum _$FetchClassSubjectsDatumFromJson(
        Map<String, dynamic> json) =>
    FetchClassSubjectsDatum(
      id: json['_id'] as String,
      classes:
          (json['classes'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
      slug: json['slug'] as String,
      school: json['school'] as String,
      note: json['note'] as String?,
      isDeleted: json['isDeleted'] as bool,
      v: (json['__v'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$FetchClassSubjectsDatumToJson(
        FetchClassSubjectsDatum instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'classes': instance.classes,
      'name': instance.name,
      'slug': instance.slug,
      'school': instance.school,
      'note': instance.note,
      'isDeleted': instance.isDeleted,
      '__v': instance.v,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
