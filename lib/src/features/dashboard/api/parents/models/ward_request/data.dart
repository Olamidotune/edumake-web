import 'package:edumake_frontend/src/features/dashboard/api/parents/models/ward_request/ward_datum_class.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/models/ward_request/ward_datum_school.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class WardDatum {
  WardDatum({
    required this.id,
    required this.wardDatumClass,
    required this.wardName,
    required this.wardDatumSchool,
    this.isDeleted,
    this.v,
    this.createdAt,
    this.updatedAt,
  });

  factory WardDatum.fromJson(Map<String, dynamic> json) =>
      _$WardDatumFromJson(json);
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'class')
  final WardDatumClass wardDatumClass;

  @JsonKey(name: 'name')
  final String wardName;

  @JsonKey(name: 'school')
  final WardDatumSchool wardDatumSchool;

  @JsonKey(name: 'isDeleted')
  final bool? isDeleted;

  @JsonKey(name: '__v')
  final int? v;

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;

  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  Map<String, dynamic> toJson() => _$WardDatumToJson(this);
}
