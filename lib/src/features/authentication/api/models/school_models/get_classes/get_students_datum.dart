import 'package:json_annotation/json_annotation.dart';

part 'get_students_datum.g.dart';

@JsonSerializable()
class GetStudentsDatum {
  GetStudentsDatum({
    required this.id,
    required this.name,
    required this.school,
    required this.guardians,
    required this.isDeleted,
  });

  factory GetStudentsDatum.fromJson(Map<String, dynamic> json) =>
      _$GetStudentsDatumFromJson(json);
  @JsonKey(name: '_id')
  String id;
  String name;
  String school;
  List<dynamic> guardians;
  bool isDeleted;

  Map<String, dynamic> toJson() => _$GetStudentsDatumToJson(this);
}
