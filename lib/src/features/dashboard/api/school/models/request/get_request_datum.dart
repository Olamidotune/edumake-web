import 'package:edumake_frontend/src/features/dashboard/api/school/models/request/get_request_parent.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/request/get_request_students.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_request_datum.g.dart';

@JsonSerializable()
class GetRequestDatum {
  GetRequestDatum({
    required this.id,
    required this.parent,
    required this.student,
    required this.status,
    required this.school,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'parent')
  final Parent parent;

  @JsonKey(name: 'student')
  final Student student;

  @JsonKey(name: 'status')
  final String status;

  @JsonKey(name: 'school')
  final String school;

  @JsonKey(name: 'isDeleted')
  final bool isDeleted;

  @JsonKey(name: 'createdAt')
  final DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  @JsonKey(name: '__v')
  final int v;

  factory GetRequestDatum.fromJson(Map<String, dynamic> json) =>
      _$GetRequestDatumFromJson(json);
  Map<String, dynamic> toJson() => _$GetRequestDatumToJson(this);
}
