import 'package:edumake_frontend/src/features/authentication/api/models/school_models/datum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_school_data_model.g.dart';

@JsonSerializable()
class GetSchoolDataModel {
  GetSchoolDataModel({
    required this.data,
    required this.message,
    required this.statusCode,
    required this.cursor,
  });

  factory GetSchoolDataModel.fromJson(Map<String, dynamic> json) =>
      _$GetSchoolDataModelFromJson(json);

  final String message;
  final int statusCode;
  final List<Datum> data;
  final String cursor;

  Map<String, dynamic> toJson() => _$GetSchoolDataModelToJson(this);
}
