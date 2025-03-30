// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventData _$EventDataFromJson(Map<String, dynamic> json) => EventData(
      upcomingEvents: (json['upcomingEvents'] as List<dynamic>)
          .map((e) => UpcomingEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      previousEvents: (json['previousEvents'] as List<dynamic>)
          .map((e) => PreviousEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EventDataToJson(EventData instance) => <String, dynamic>{
      'upcomingEvents': instance.upcomingEvents,
      'previousEvents': instance.previousEvents,
    };
