// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fees_payment_breakdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeesBreakdown _$FeesBreakdownFromJson(Map<String, dynamic> json) =>
    FeesBreakdown(
      title: json['title'] as String,
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$FeesBreakdownToJson(FeesBreakdown instance) =>
    <String, dynamic>{
      'title': instance.title,
      'amount': instance.amount,
    };
