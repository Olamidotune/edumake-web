import 'package:json_annotation/json_annotation.dart';

part 'send_request_school.g.dart';

@JsonSerializable()
class SendRequestSchool {
  SendRequestSchool({
    required this.id,
    required this.schoolName,
    required this.schoolEmail,
  });

  factory SendRequestSchool.fromJson(Map<String, dynamic> json) =>
      _$SendRequestSchoolFromJson(json);

  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'schoolName')
  String schoolName;

  @JsonKey(name: 'schoolEmail')
  String schoolEmail;

  Map<String, dynamic> toJson() => _$SendRequestSchoolToJson(this);
}
