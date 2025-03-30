// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'break_down.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BreakDown _$BreakDownFromJson(Map<String, dynamic> json) => BreakDown(
      title: json['title'] as String,
      amount: (json['amount'] as num).toInt(),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$BreakDownToJson(BreakDown instance) => <String, dynamic>{
      'title': instance.title,
      'amount': instance.amount,
      '_id': instance.id,
    };
