import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_id_class.g.dart';

@JsonSerializable()
class EventIdClass {
  EventIdClass({
    required this.id,
    required this.name,
  });

  factory EventIdClass.fromJson(Map<String, dynamic> json) =>
      _$EventIdClassFromJson(json);
  String id;
  String name;
  Map<String, dynamic> toJson() => _$EventIdClassToJson(this);
}
