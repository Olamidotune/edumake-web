// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_created_by.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventCreatedBy _$EventCreatedByFromJson(Map<String, dynamic> json) =>
    EventCreatedBy(
      id: json['_id'] as String,
      role: json['role'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$EventCreatedByToJson(EventCreatedBy instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'role': instance.role,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
