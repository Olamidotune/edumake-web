// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_request_guardian.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Guardians _$GuardiansFromJson(Map<String, dynamic> json) => Guardians(
      guardianId: json['id'] as String,
      relationship: json['relationship'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$GuardiansToJson(Guardians instance) => <String, dynamic>{
      'id': instance.guardianId,
      'relationship': instance.relationship,
      '_id': instance.id,
    };
