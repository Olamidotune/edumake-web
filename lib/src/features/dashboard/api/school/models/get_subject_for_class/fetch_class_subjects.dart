import 'package:edumake_frontend/src/features/dashboard/api/school/models/get_subject_for_class/class_subject_datum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fetch_class_subjects.g.dart';

@JsonSerializable()
class FetchClassSubjects {
  FetchClassSubjects({
    required this.success,
    required this.message,
    required this.statusCode,
    required this.data,
  });

  factory FetchClassSubjects.fromJson(Map<String, dynamic> json) =>
      _$FetchClassSubjectsFromJson(json);
  @JsonKey(name: 'success')
  final bool success;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'statusCode')
  final int statusCode;

  @JsonKey(name: 'data')
  final List<FetchClassSubjectsDatum> data;
  Map<String, dynamic> toJson() => _$FetchClassSubjectsToJson(this);
}
