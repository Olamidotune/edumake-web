// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchPaymentsResponse _$FetchPaymentsResponseFromJson(
        Map<String, dynamic> json) =>
    FetchPaymentsResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => FetchPaymentsDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusCode: (json['statusCode'] as num).toInt(),
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$FetchPaymentsResponseToJson(
        FetchPaymentsResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data.map((e) => e.toJson()).toList(),
      'cursor': instance.cursor,
      'statusCode': instance.statusCode,
    };

FetchPaymentsDatum _$FetchPaymentsDatumFromJson(Map<String, dynamic> json) =>
    FetchPaymentsDatum(
      id: json['_id'] as String,
      fee: Fee.fromJson(json['fee'] as Map<String, dynamic>),
      amount: (json['amount'] as num).toInt(),
      status: json['status'] as String,
      paidBy: PaidBy.fromJson(json['paidBy'] as Map<String, dynamic>),
      school: json['school'] as String,
      paidFor: PaidFor.fromJson(json['paidFor'] as Map<String, dynamic>),
      hasIssue: json['hasIssue'] as bool,
      isDeleted: json['isDeleted'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$FetchPaymentsDatumToJson(FetchPaymentsDatum instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'fee': instance.fee.toJson(),
      'amount': instance.amount,
      'status': instance.status,
      'paidBy': instance.paidBy.toJson(),
      'school': instance.school,
      'paidFor': instance.paidFor.toJson(),
      'hasIssue': instance.hasIssue,
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };

Fee _$FeeFromJson(Map<String, dynamic> json) => Fee(
      id: json['_id'] as String,
      title: json['title'] as String,
      feesBreakdown: (json['feesBreakdown'] as List<dynamic>)
          .map((e) => FeesBreakdown.fromJson(e as Map<String, dynamic>))
          .toList(),
      dueDate: DateTime.parse(json['dueDate'] as String),
      term: json['term'] as String,
    );

Map<String, dynamic> _$FeeToJson(Fee instance) => <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'feesBreakdown': instance.feesBreakdown.map((e) => e.toJson()).toList(),
      'dueDate': instance.dueDate.toIso8601String(),
      'term': instance.term,
    };

FeesBreakdown _$FeesBreakdownFromJson(Map<String, dynamic> json) =>
    FeesBreakdown(
      title: json['title'] as String,
      amount: (json['amount'] as num).toInt(),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$FeesBreakdownToJson(FeesBreakdown instance) =>
    <String, dynamic>{
      'title': instance.title,
      'amount': instance.amount,
      '_id': instance.id,
    };

PaidBy _$PaidByFromJson(Map<String, dynamic> json) => PaidBy(
      id: json['_id'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$PaidByToJson(PaidBy instance) => <String, dynamic>{
      '_id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };

PaidFor _$PaidForFromJson(Map<String, dynamic> json) => PaidFor(
      id: json['_id'] as String,
      paidForClass: json['class'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$PaidForToJson(PaidFor instance) => <String, dynamic>{
      '_id': instance.id,
      'class': instance.paidForClass,
      'name': instance.name,
    };
