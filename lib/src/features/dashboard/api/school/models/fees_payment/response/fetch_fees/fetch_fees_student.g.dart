// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_fees_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Students _$StudentsFromJson(Map<String, dynamic> json) => Students(
      studentId: json['studentId'] == null
          ? null
          : StudentId.fromJson(json['studentId'] as Map<String, dynamic>?),
      paymentStatus: json['paymentStatus'] as String?,
      amountPaid: (json['amountPaid'] as num?)?.toInt(),
      amountPaidId: json['_id'] as String?,
    );

Map<String, dynamic> _$StudentsToJson(Students instance) => <String, dynamic>{
      'studentId': instance.studentId,
      'paymentStatus': instance.paymentStatus,
      'amountPaid': instance.amountPaid,
      '_id': instance.amountPaidId,
    };
