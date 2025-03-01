import 'package:json_annotation/json_annotation.dart';

part 'fees_payment_breakdown.g.dart';

@JsonSerializable()
class FeesBreakdown {
  FeesBreakdown({
    required this.title,
    required this.amount,
    this.id,
  });

  factory FeesBreakdown.fromJson(Map<String, dynamic> json) =>
      _$FeesBreakdownFromJson(json);
  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'amount')
  final int amount;

  @JsonKey(name: '_id')
  final String? id;
  Map<String, dynamic> toJson() => _$FeesBreakdownToJson(this);
}
