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
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'role')
  final String role;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  Map<String, dynamic> toJson() => _$EventCreatedByToJson(this);
}
