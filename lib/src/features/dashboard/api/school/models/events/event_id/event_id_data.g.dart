// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_id_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventIdData _$EventIdDataFromJson(Map<String, dynamic> json) => EventIdData(
      id: json['_id'] as String,
      title: json['title'] as String,
      date: json['date'] as String,
      details: json['details'] as String,
      associatedEvents: json['associatedEvents'] as List<dynamic>,
      classes: (json['classes'] as List<dynamic>)
          .map((e) => EventClass.fromJson(e as Map<String, dynamic>))
          .toList(),
      school: json['school'] as String,
      imageUrl: json['imageUrl'] as String,
      createdBy:
          EventCreatedBy.fromJson(json['createdBy'] as Map<String, dynamic>),
      isDeleted: json['isDeleted'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$EventIdDataToJson(EventIdData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'date': instance.date,
      'details': instance.details,
      'associatedEvents': instance.associatedEvents,
      'classes': instance.classes,
      'school': instance.school,
      'imageUrl': instance.imageUrl,
      'createdBy': instance.createdBy,
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };
