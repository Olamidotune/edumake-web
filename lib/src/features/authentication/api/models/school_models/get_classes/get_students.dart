import 'package:edumake_frontend/src/features/authentication/api/models/school_models/get_classes/get_students_datum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_students.g.dart';

@JsonSerializable()
class GetStudentsModel {
  GetStudentsModel({
    required this.success,
    required this.message,
    required this.statusCode,
    required this.data,
  });

  factory GetStudentsModel.fromJson(Map<String, dynamic> json) =>
      _$GetStudentsModelFromJson(json);

  bool success;
  String message;
  int statusCode;
  List<GetStudentsDatum> data;

  Map<String, dynamic> toJson() => _$GetStudentsModelToJson(this);
}
