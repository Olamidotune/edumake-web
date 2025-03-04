import 'package:json_annotation/json_annotation.dart';

part 'fetch_fees_class.g.dart';

@JsonSerializable()
class Class {
  Class({required this.id, required this.name});

  factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);
  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'name')
  String name;
  Map<String, dynamic> toJson() => _$ClassToJson(this);
}
