import 'package:json_annotation/json_annotation.dart';

part 'subject.g.dart';

@JsonSerializable()
class Subject {
  Subject({
    required this.classes,
    required this.name,
    this.note,
  });

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);

  List<String> classes;
  String name;
  String? note;

  Map<String, dynamic> toJson() => _$SubjectToJson(this);
}
