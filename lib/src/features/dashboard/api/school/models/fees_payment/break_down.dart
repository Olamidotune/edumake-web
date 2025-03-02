import 'package:json_annotation/json_annotation.dart';

part 'break_down.g.dart';

@JsonSerializable()
class BreakDown {
  BreakDown({required this.title, required this.amount, required this.id});

  factory BreakDown.fromJson(Map<String, dynamic> json) =>
      _$BreakDownFromJson(json);
  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'amount')
  final int amount;

  @JsonKey(name: '_id')
  final String id;

  Map<String, dynamic> toJson() => _$BreakDownToJson(this);
}
