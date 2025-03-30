// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_response_datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestResponseDatum _$TestResponseDatumFromJson(Map<String, dynamic> json) =>
    TestResponseDatum(
      id: json['_id'] as String,
      title: json['title'] as String,
      testResponseSubject:
          TestResponseSubject.fromJson(json['subject'] as Map<String, dynamic>),
      dateWritten: DateTime.parse(json['dateWritten'] as String),
      classId:
          TestResponseSubject.fromJson(json['classId'] as Map<String, dynamic>),
      testResponseSchool: json['school'] as String,
      addedBy: json['addedBy'] as String,
      testResponseGrades: (json['grades'] as List<dynamic>)
          .map((e) => TestResponseGrade.fromJson(e as Map<String, dynamic>))
          .toList(),
      isDeleted: json['isDeleted'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$TestResponseDatumToJson(TestResponseDatum instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'subject': instance.testResponseSubject,
      'dateWritten': instance.dateWritten.toIso8601String(),
      'classId': instance.classId,
      'school': instance.testResponseSchool,
      'addedBy': instance.addedBy,
      'grades': instance.testResponseGrades,
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };
