import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'classes_model.g.dart';

@JsonSerializable()
class Classes {
  Classes({
    required this.message,
  });

  factory Classes.fromJson(Map<String, dynamic> json) =>
      _$ClassesFromJson(json);

  String message;

  Map<String, dynamic> toJson() => _$ClassesToJson(this);
}
