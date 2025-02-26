import 'package:edumake_frontend/src/features/dashboard/api/parents/models/send_request/send_request_parent.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/models/send_request/send_request_school.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send_request_data.g.dart';

@JsonSerializable()
class SendRequestData {
  SendRequestData({
    required this.parent,
    required this.student,
    required this.status,
    required this.school,
    required this.isDeleted,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory SendRequestData.fromJson(Map<String, dynamic> json) =>
      _$SendRequestDataFromJson(json);
  @JsonKey(name: 'parent')
  SendRequestParent parent;

  @JsonKey(name: 'student')
  String student;

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'school')
  SendRequestSchool school;

  @JsonKey(name: 'isDeleted')
  bool isDeleted;

  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'createdAt')
  DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  DateTime updatedAt;

  @JsonKey(name: '__v')
  int v;
  Map<String, dynamic> toJson() => _$SendRequestDataToJson(this);
}
