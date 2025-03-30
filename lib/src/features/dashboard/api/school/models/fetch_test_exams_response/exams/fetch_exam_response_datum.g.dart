// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_exam_response_datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchExamResponseDatum _$FetchExamResponseDatumFromJson(
        Map<String, dynamic> json) =>
    FetchExamResponseDatum(
      id: json['_id'] as String,
      title: json['title'] as String,
      examResponseSubject: FetchExamResponseSubject.fromJson(
          json['subject'] as Map<String, dynamic>),
      dateWritten: json['dateWritten'] as String,
      classId: FetchExamResponseSubject.fromJson(
          json['classId'] as Map<String, dynamic>),
      testResponseSchool: json['school'] as String,
      addedBy: json['addedBy'] as String,
      examResponseGrades: (json['grades'] as List<dynamic>)
          .map(
              (e) => FetchExamResponseGrade.fromJson(e as Map<String, dynamic>))
          .toList(),
      isDeleted: json['isDeleted'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$FetchExamResponseDatumToJson(
        FetchExamResponseDatum instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'subject': instance.examResponseSubject,
      'dateWritten': instance.dateWritten,
      'classId': instance.classId,
      'school': instance.testResponseSchool,
      'addedBy': instance.addedBy,
      'grades': instance.examResponseGrades,
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };
