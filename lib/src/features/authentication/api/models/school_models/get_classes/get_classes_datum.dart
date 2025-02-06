import 'package:json_annotation/json_annotation.dart';

part 'get_classes_datum.g.dart';

@JsonSerializable()
class GetClassDatum {
  GetClassDatum({
    required this.id,
    required this.datumClass,
    required this.name,
    required this.school,
    required this.guardians,
    required this.isDeleted,
    required this.v,
    required this.createdAt,
    required this.updatedAt,
  });

  factory GetClassDatum.fromJson(Map<String, dynamic> json) =>
      _$GetClassDatumFromJson(json);
  String id;
  String datumClass;
  String name;
  String school;
  List<dynamic> guardians;
  bool isDeleted;
  int v;
  DateTime createdAt;
  DateTime updatedAt;

  Map<String, dynamic> toJson() => _$GetClassDatumToJson(this);
}
