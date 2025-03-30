// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WardDatum _$WardDatumFromJson(Map<String, dynamic> json) => WardDatum(
      id: json['_id'] as String,
      wardDatumClass:
          WardDatumClass.fromJson(json['class'] as Map<String, dynamic>),
      wardName: json['name'] as String,
      wardDatumSchool:
          WardDatumSchool.fromJson(json['school'] as Map<String, dynamic>),
      isDeleted: json['isDeleted'] as bool?,
      v: (json['__v'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$WardDatumToJson(WardDatum instance) => <String, dynamic>{
      '_id': instance.id,
      'class': instance.wardDatumClass,
      'name': instance.wardName,
      'school': instance.wardDatumSchool,
      'isDeleted': instance.isDeleted,
      '__v': instance.v,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
