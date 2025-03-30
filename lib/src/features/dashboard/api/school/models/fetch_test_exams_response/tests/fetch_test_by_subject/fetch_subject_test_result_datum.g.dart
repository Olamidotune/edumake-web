// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_subject_test_result_datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchSubjectTestResultDatum _$FetchSubjectTestResultDatumFromJson(
        Map<String, dynamic> json) =>
    FetchSubjectTestResultDatum(
      id: json['_id'] as String,
      title: json['title'] as String,
      subject: FetchSubjectTestResultClassId.fromJson(
          json['subject'] as Map<String, dynamic>),
      dateWritten: json['dateWritten'] as String,
      classId: FetchSubjectTestResultClassId.fromJson(
          json['classId'] as Map<String, dynamic>),
      school: json['school'] as String,
      addedBy: json['addedBy'] as String,
      grades: (json['grades'] as List<dynamic>)
          .map((e) =>
              FetchSubjectTestResultGrade.fromJson(e as Map<String, dynamic>))
          .toList(),
      isDeleted: json['isDeleted'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$FetchSubjectTestResultDatumToJson(
        FetchSubjectTestResultDatum instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'subject': instance.subject,
      'dateWritten': instance.dateWritten,
      'classId': instance.classId,
      'school': instance.school,
      'addedBy': instance.addedBy,
      'grades': instance.grades,
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };
