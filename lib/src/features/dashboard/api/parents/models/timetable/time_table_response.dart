import 'package:edumake_frontend/src/features/dashboard/api/parents/models/timetable/time_table_datum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'time_table_response.g.dart';

@JsonSerializable()
class FetchTimeTableResponse {
  FetchTimeTableResponse({
    required this.success,
    required this.message,
    required this.data,
  });

  factory FetchTimeTableResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchTimeTableResponseFromJson(json);

  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final List<TimeTableDatum> data;

  Map<String, dynamic> toJson() => _$FetchTimeTableResponseToJson(this);
}
