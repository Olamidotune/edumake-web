// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'individual_student_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndividualStudentPaymentHistoryResponse
    _$IndividualStudentPaymentHistoryResponseFromJson(
            Map<String, dynamic> json) =>
        IndividualStudentPaymentHistoryResponse(
          success: json['success'] as bool?,
          message: json['message'] as String?,
          statusCode: (json['statusCode'] as num?)?.toInt(),
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  IndividualStudentPaymentHistoryResponseDatum.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IndividualStudentPaymentHistoryResponseToJson(
        IndividualStudentPaymentHistoryResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'statusCode': instance.statusCode,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

IndividualStudentPaymentHistoryResponseDatum
    _$IndividualStudentPaymentHistoryResponseDatumFromJson(
            Map<String, dynamic> json) =>
        IndividualStudentPaymentHistoryResponseDatum(
          id: json['id'] as String?,
          fee: json['fee'] == null
              ? null
              : Fee.fromJson(json['fee'] as Map<String, dynamic>),
          amount: (json['amount'] as num?)?.toInt(),
          status: json['status'] as String?,
          paidBy: json['paidBy'] == null
              ? null
              : PaidBy.fromJson(json['paidBy'] as Map<String, dynamic>),
          school: json['school'] == null
              ? null
              : School.fromJson(json['school'] as Map<String, dynamic>),
          paidFor: json['paidFor'] == null
              ? null
              : PaidFor.fromJson(json['paidFor'] as Map<String, dynamic>),
          hasIssue: json['hasIssue'] as bool?,
          isDeleted: json['isDeleted'] as bool?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
          v: (json['__v'] as num?)?.toInt(),
        );

Map<String, dynamic> _$IndividualStudentPaymentHistoryResponseDatumToJson(
        IndividualStudentPaymentHistoryResponseDatum instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fee': instance.fee?.toJson(),
      'amount': instance.amount,
      'status': instance.status,
      'paidBy': instance.paidBy?.toJson(),
      'school': instance.school?.toJson(),
      'paidFor': instance.paidFor?.toJson(),
      'hasIssue': instance.hasIssue,
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.v,
    };

Fee _$FeeFromJson(Map<String, dynamic> json) => Fee(
      id: json['id'] as String?,
      title: json['title'] as String?,
      details: json['details'] as String?,
      totalAmount: (json['totalAmount'] as num?)?.toInt(),
      classes:
          (json['classes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      school: json['school'] as String?,
      createdBy: json['createdBy'] as String?,
      feesBreakdown: (json['feesBreakdown'] as List<dynamic>?)
          ?.map((e) => FeesBreakdown.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      term: json['term'] as String?,
      students: (json['students'] as List<dynamic>?)
          ?.map((e) => Student.fromJson(e as Map<String, dynamic>))
          .toList(),
      isDeleted: json['isDeleted'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FeeToJson(Fee instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'details': instance.details,
      'totalAmount': instance.totalAmount,
      'classes': instance.classes,
      'school': instance.school,
      'createdBy': instance.createdBy,
      'feesBreakdown': instance.feesBreakdown?.map((e) => e.toJson()).toList(),
      'status': instance.status,
      'dueDate': instance.dueDate?.toIso8601String(),
      'term': instance.term,
      'students': instance.students?.map((e) => e.toJson()).toList(),
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };

FeesBreakdown _$FeesBreakdownFromJson(Map<String, dynamic> json) =>
    FeesBreakdown(
      title: json['title'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$FeesBreakdownToJson(FeesBreakdown instance) =>
    <String, dynamic>{
      'title': instance.title,
      'amount': instance.amount,
      'id': instance.id,
    };

Student _$StudentFromJson(Map<String, dynamic> json) => Student(
      studentId: json['studentId'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
      amountPaid: (json['amountPaid'] as num?)?.toInt(),
      id: json['id'] as String?,
      paymentDate: json['paymentDate'] == null
          ? null
          : DateTime.parse(json['paymentDate'] as String),
    );

Map<String, dynamic> _$StudentToJson(Student instance) => <String, dynamic>{
      'studentId': instance.studentId,
      'paymentStatus': instance.paymentStatus,
      'amountPaid': instance.amountPaid,
      'id': instance.id,
      'paymentDate': instance.paymentDate?.toIso8601String(),
    };

PaidBy _$PaidByFromJson(Map<String, dynamic> json) => PaidBy(
      id: json['id'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$PaidByToJson(PaidBy instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
    };

PaidFor _$PaidForFromJson(Map<String, dynamic> json) => PaidFor(
      id: json['id'] as String?,
      paidForClass: json['paidForClass'] as String?,
      name: json['name'] as String?,
      school: json['school'] as String?,
      guardians: (json['guardians'] as List<dynamic>?)
          ?.map((e) => Guardian.fromJson(e as Map<String, dynamic>))
          .toList(),
      isDeleted: json['isDeleted'] as bool?,
      v: (json['__v'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$PaidForToJson(PaidFor instance) => <String, dynamic>{
      'id': instance.id,
      'paidForClass': instance.paidForClass,
      'name': instance.name,
      'school': instance.school,
      'guardians': instance.guardians?.map((e) => e.toJson()).toList(),
      'isDeleted': instance.isDeleted,
      '__v': instance.v,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

Guardian _$GuardianFromJson(Map<String, dynamic> json) => Guardian(
      guardianId: json['guardianId'] as String?,
      relationship: json['relationship'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$GuardianToJson(Guardian instance) => <String, dynamic>{
      'guardianId': instance.guardianId,
      'relationship': instance.relationship,
      'id': instance.id,
    };

School _$SchoolFromJson(Map<String, dynamic> json) => School(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$SchoolToJson(School instance) => <String, dynamic>{
      'id': instance.id,
    };
