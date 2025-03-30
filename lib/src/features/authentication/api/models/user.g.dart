// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['email'] as String?,
      json['phoneNumber'] as String?,
      json['lastName'] as String?,
      json['firstName'] as String?,
      json['idNumber'] as String?,
      User._schoolFromJson(json['school'] as Map<String, dynamic>?),
      id: json['_id'] as String?,
      hasActiveSubscription: json['hasActiveSubscription'] as bool? ?? false,
      isEmailVerified: json['isEmailVerified'] as bool? ?? true,
    )
      ..password = json['password'] as String?
      ..role = json['role'] as String?
      ..hasOnboarded = json['hasOnboarded'] as bool?
      ..classes =
          (json['classes'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..subjects =
          (json['subjects'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..subscriptionStartDate = json['subscriptionStartDate'] == null
          ? null
          : DateTime.parse(json['subscriptionStartDate'] as String)
      ..createdAt = json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String)
      ..updatedAt = json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String)
      ..v = (json['__v'] as num?)?.toInt();

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      '_id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'hasOnboarded': instance.hasOnboarded,
      'classes': instance.classes,
      'subjects': instance.subjects,
      'hasActiveSubscription': instance.hasActiveSubscription,
      'subscriptionStartDate':
          instance.subscriptionStartDate?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'idNumber': instance.idNumber,
      'school': User._schoolToJson(instance.school),
    };
