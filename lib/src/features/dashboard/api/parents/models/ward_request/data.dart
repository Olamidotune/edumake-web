import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  Data({
    required this.parent,
    required this.student,
    required this.status,
    required this.isDeleted,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @JsonKey(name: 'parent')
  String parent;
  @JsonKey(name: 'student')
  String student;
  @JsonKey(name: 'status')
  String status;
  @JsonKey(name: 'isDeleted')
  bool isDeleted;
  @JsonKey(name: '_id')
  String id;
  DateTime createdAt;
  DateTime updatedAt;
  @JsonKey(name: '__v')
  int v;

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
