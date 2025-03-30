// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_request_parent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Parent _$ParentFromJson(Map<String, dynamic> json) => Parent(
      id: GetRequestParentId.fromJson(json['id'] as Map<String, dynamic>),
      relationship: json['relationship'] as String,
    );

Map<String, dynamic> _$ParentToJson(Parent instance) => <String, dynamic>{
      'id': instance.id,
      'relationship': instance.relationship,
    };
