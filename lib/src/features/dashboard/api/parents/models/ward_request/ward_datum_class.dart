import 'package:json_annotation/json_annotation.dart';

part 'ward_datum_class.g.dart';

@JsonSerializable()
class WardDatumClass {
  WardDatumClass({
    this.id,
    this.school,
    this.name,
    this.slug,
    this.isDeleted,
    this.v,
    this.createdAt,
    this.updatedAt,
  });

  factory WardDatumClass.fromJson(Map<String, dynamic> json) =>
      _$WardDatumClassFromJson(json);
  @JsonKey(name: '_id')
  final String? id;

  @JsonKey(name: 'school')
  final String? school;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'slug')
  final String? slug;

  @JsonKey(name: 'isDeleted')
  final bool? isDeleted;

  @JsonKey(name: '__v')
  final int? v;

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;

  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  Map<String, dynamic> toJson() => _$WardDatumClassToJson(this);
}
