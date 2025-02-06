import 'package:edumake_frontend/src/features/authentication/api/models/school_models/get_classes/get_classes_datum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_classes.g.dart';

@JsonSerializable()
class GetClassModel {
  GetClassModel({
    required this.success,
    required this.message,
    required this.statusCode,
    required this.data,
  });

  factory GetClassModel.fromJson(Map<String, dynamic> json) =>
      _$GetClassModelFromJson(json);

  bool success;
  String message;
  int statusCode;
  List<GetClassDatum> data;

  Map<String, dynamic> toJson() => _$GetClassModelToJson(this);
}
