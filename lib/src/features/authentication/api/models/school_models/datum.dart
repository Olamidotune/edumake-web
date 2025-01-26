import 'package:freezed_annotation/freezed_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  Datum({
    required this.school,
    required this.name,
    required this.id,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
  String school;
  String name;
  @JsonKey(name: '_id')
  final String id;

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
