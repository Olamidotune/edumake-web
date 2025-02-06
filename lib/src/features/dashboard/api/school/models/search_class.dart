import 'package:json_annotation/json_annotation.dart';

part 'search_class.g.dart';

@JsonSerializable()
class Class {
  Class({
    required this.id,
    required this.name,
  });

  factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);

  @JsonKey(name: '_id')
  final String id;
  final String name;

  Map<String, dynamic> toJson() => _$ClassToJson(this);
}
