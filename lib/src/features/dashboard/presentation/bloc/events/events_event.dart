part of 'events_bloc.dart';

@freezed
class EventsEvent with _$EventsEvent {
  const factory EventsEvent() = _EventsEvent;
  const factory EventsEvent.init() = _Init;
  const factory EventsEvent.addEvents() = _AddEvents;
  const factory EventsEvent.addEventsSuccessful(
    EventModel eventModel,
  ) = _AddEventsSuccessful;
  const factory EventsEvent.addEventsFailed(
    String? message,
  ) = _AddEventsFailed;

  const factory EventsEvent.onEventTitleChanged(
    String eventTitle,
  ) = _OnEventTitleChanged;

  const factory EventsEvent.onEventRecipients(
    String eventRecipients,
  ) = _OnEventRecipients;

  const factory EventsEvent.onEventDateChanged(
    String eventDate,
  ) = _OnEventDateChanged;

  const factory EventsEvent.onEventDetailsChanged(
    String eventDetails,
  ) = _OnEventDetailsChanged;
////////////////////////////////////////////////////////////////////////////////
  ///FETCH EVENTS
////////////////////////////////////////////////////////////////////////////////
  const factory EventsEvent.fetchEvents() = _FetchEvents;
  const factory EventsEvent.fetchEventsSuccessful(
    EventResponse response,
  ) = _FetchEventsSuccessful;
  const factory EventsEvent.fetchEventsFailed(
    String message,
  ) = _FetchEventsFailed;
  const factory EventsEvent.errorMessage(String? message) = _ErrorMessage;
}
