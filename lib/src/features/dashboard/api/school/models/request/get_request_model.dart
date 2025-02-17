import 'package:edumake_frontend/src/features/dashboard/api/school/models/request/get_request_datum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_request_model.freezed.dart';
part 'get_request_model.g.dart';

@freezed
class GetRequestModel with _$GetRequestModel {
  const factory GetRequestModel({
    required bool success,
    required String message,
    required int statusCode,
    required List<GetRequestDatum> data,
  }) = _GetRequestModel;

  factory GetRequestModel.fromJson(Map<String, dynamic> json) =>
      _$GetRequestModelFromJson(json);
}
