import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_class.g.dart';

@JsonSerializable()
class EventClass {
  EventClass({
    required this.id,
    required this.name,
  });

  factory EventClass.fromJson(Map<String, dynamic> json) =>
      _$EventClassFromJson(json);
  final String id;
  final String name;
  Map<String, dynamic> toJson() => _$EventClassToJson(this);
}
