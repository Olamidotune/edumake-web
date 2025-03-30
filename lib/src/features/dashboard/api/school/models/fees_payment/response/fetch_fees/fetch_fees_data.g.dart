// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_fees_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchResponseDatum _$FetchResponseDatumFromJson(Map<String, dynamic> json) =>
    FetchResponseDatum(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      details: json['details'] as String?,
      totalAmount: (json['totalAmount'] as num?)?.toInt(),
      classes: (json['classes'] as List<dynamic>?)
          ?.map((e) => Class.fromJson(e as Map<String, dynamic>))
          .toList(),
      school: json['school'] == null
          ? null
          : School.fromJson(json['school'] as Map<String, dynamic>),
      createdBy: json['createdBy'] == null
          ? null
          : CreateBy.fromJson(json['createdBy'] as Map<String, dynamic>),
      feesBreakdown: (json['feesBreakdown'] as List<dynamic>?)
          ?.map((e) => FeesBreakdown.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      term: json['term'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
      students: (json['students'] as List<dynamic>?)
          ?.map((e) => Students.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FetchResponseDatumToJson(FetchResponseDatum instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'details': instance.details,
      'totalAmount': instance.totalAmount,
      'classes': instance.classes,
      'school': instance.school,
      'createdBy': instance.createdBy,
      'feesBreakdown': instance.feesBreakdown,
      'status': instance.status,
      'dueDate': instance.dueDate?.toIso8601String(),
      'term': instance.term,
      'students': instance.students,
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
