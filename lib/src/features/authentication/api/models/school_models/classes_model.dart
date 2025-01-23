import 'package:edumake_frontend/src/features/authentication/api/models/school_models/datum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'classes_model.g.dart';

@JsonSerializable()
class Classes {
  Classes({
    required this.message,
    required this.data,
  });

  factory Classes.fromJson(Map<String, dynamic> json) =>
      _$ClassesFromJson(json);

  String message;
  Datum data;

  Map<String, dynamic> toJson() => _$ClassesToJson(this);
}
