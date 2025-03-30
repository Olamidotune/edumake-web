// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) => SearchResult(
      id: json['_id'] as String,
      studentName: json['name'] as String,
      school: SchoolDetails.fromJson(json['school'] as Map<String, dynamic>),
      guardians: json['guardians'] as List<dynamic>,
      isDeleted: json['isDeleted'] as bool,
      classInfo: Class.fromJson(json['class'] as Map<String, dynamic>),
      version: (json['__v'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SearchResultToJson(SearchResult instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'class': instance.classInfo,
      'name': instance.studentName,
      'school': instance.school,
      'guardians': instance.guardians,
      'isDeleted': instance.isDeleted,
      '__v': instance.version,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
