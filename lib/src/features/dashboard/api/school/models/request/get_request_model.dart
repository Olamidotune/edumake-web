import 'package:edumake_frontend/src/features/dashboard/api/school/models/request/get_request_datum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'get_request_model.freezed.dart';

// @freezed

// class GetRequestModel {
//   GetRequestModel({
//     required this.success,
//     required this.message,
//     required this.statusCode,
//     required this.data,
//   });

//   factory GetRequestModel.fromJson(Map<String, dynamic> json) =>
//       _$GetRequestModelFromJson(json);
//   @JsonKey(name: 'success')
//   final bool success;

//   @JsonKey(name: 'message')
//   final String message;

//   @JsonKey(name: 'statusCode')
//   final int statusCode;

//   @JsonKey(name: 'data')
//   final List<GetRequestDatum> data;
//   Map<String, dynamic> toJson() => _$GetRequestModelToJson(this);
// }

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
