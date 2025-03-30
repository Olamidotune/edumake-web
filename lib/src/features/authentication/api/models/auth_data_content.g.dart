// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_data_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthDataContent _$AuthDataContentFromJson(Map<String, dynamic> json) =>
    AuthDataContent(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$AuthDataContentToJson(AuthDataContent instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };
