import 'package:json_annotation/json_annotation.dart';

part 'fees_payment_breakdown.g.dart';

@JsonSerializable()
class FeesBreakdown {
  FeesBreakdown({
    required this.title,
    required this.amount,
  });

  factory FeesBreakdown.fromJson(Map<String, dynamic> json) =>
      _$FeesBreakdownFromJson(json);
  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'amount')
  final int amount;

  Map<String, dynamic> toJson() => _$FeesBreakdownToJson(this);
}
