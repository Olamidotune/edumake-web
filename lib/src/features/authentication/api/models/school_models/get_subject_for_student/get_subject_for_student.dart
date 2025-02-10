import 'package:edumake_frontend/src/features/authentication/api/models/school_models/get_subject_for_student/get_subject_for_student_datum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_subject_for_student.g.dart';

@JsonSerializable()
class GetSubjectForStudent {
  @JsonKey(name: 'success')
  bool success;

  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'statusCode')
  int statusCode;

  @JsonKey(name: 'data')
  List<GetSubjectForStudentDatum> data;

  GetSubjectForStudent({
    required this.success,
    required this.message,
    required this.statusCode,
    required this.data,
  });

  factory GetSubjectForStudent.fromJson(Map<String, dynamic> json) =>
      _$GetSubjectForStudentFromJson(json);
  Map<String, dynamic> toJson() => _$GetSubjectForStudentToJson(this);
}
