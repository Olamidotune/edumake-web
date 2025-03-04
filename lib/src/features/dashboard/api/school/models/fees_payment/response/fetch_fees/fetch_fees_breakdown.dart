import 'package:json_annotation/json_annotation.dart';
part 'fetch_fees_breakdown.g.dart';

@JsonSerializable()
class FeesBreakdown {
  FeesBreakdown({required this.title, required this.amount, required this.id});

  factory FeesBreakdown.fromJson(Map<String, dynamic> json) =>
      _$FeesBreakdownFromJson(json);
  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'amount')
  int amount;

  @JsonKey(name: '_id')
  String id;
  Map<String, dynamic> toJson() => _$FeesBreakdownToJson(this);
}
