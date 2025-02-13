import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_created_by.g.dart';

@JsonSerializable()
class EventCreatedBy {
  EventCreatedBy({
    required this.id,
    required this.role,
    required this.firstName,
    required this.lastName,
  });

  factory EventCreatedBy.fromJson(Map<String, dynamic> json) =>
      _$EventCreatedByFromJson(json);
  final String id;
  final String role;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  Map<String, dynamic> toJson() => _$EventCreatedByToJson(this);
}
