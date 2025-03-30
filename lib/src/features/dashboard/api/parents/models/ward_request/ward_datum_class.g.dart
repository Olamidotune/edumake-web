// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ward_datum_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WardDatumClass _$WardDatumClassFromJson(Map<String, dynamic> json) =>
    WardDatumClass(
      id: json['_id'] as String?,
      school: json['school'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      v: (json['__v'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$WardDatumClassToJson(WardDatumClass instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'school': instance.school,
      'name': instance.name,
      'slug': instance.slug,
      'isDeleted': instance.isDeleted,
      '__v': instance.v,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
