// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_fees_created_by.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateBy _$CreateByFromJson(Map<String, dynamic> json) => CreateBy(
      id: json['_id'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$CreateByToJson(CreateBy instance) => <String, dynamic>{
      '_id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
