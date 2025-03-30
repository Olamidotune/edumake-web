// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_fees_breakdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
