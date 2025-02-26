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
  const factory EventsEvent.fetchEvents(String? schoolId) = _FetchEvents;
  const factory EventsEvent.fetchEventsSuccessful(
    EventResponse response,
  ) = _FetchEventsSuccessful;
  const factory EventsEvent.fetchEventsFailed(
    String message,
  ) = _FetchEventsFailed;

////////////////////////////////////////////////////////////////////////////////
  ///FETCH EVENTS BY ID
////////////////////////////////////////////////////////////////////////////////
  const factory EventsEvent.fetchEventsById(String eventId) = _FetchEventsById;
  const factory EventsEvent.fetchEventsSuccessfulById(
    EventIdResponse response,
  ) = _FetchEventsSuccessfulById;
  const factory EventsEvent.fetchEventsFailedById(
    String message,
  ) = _FetchEventsFailedById;

////////////////////////////////////////////////////////////////////////////////
  ///DELETE EVENTS
////////////////////////////////////////////////////////////////////////////////
  const factory EventsEvent.deleteEvent(String eventId) = _DeleteEvent;
  const factory EventsEvent.deleteEventSuccessful(
    String? message,
  ) = _DeleteEventSuccessful;
  const factory EventsEvent.deleteEventFailed(
    String? message,
  ) = _DeleteEventFailed;

////////////////////////////////////////////////////////////////////////////////
  ///FETCH EVENTS
////////////////////////////////////////////////////////////////////////////////
  const factory EventsEvent.fetchEventsByClass(
      String? schoolId, String classId) = _FetchEventsByClass;
  const factory EventsEvent.fetchEventsByClassSuccessful(
    EventResponse response,
  ) = _FetchEventsByClassSuccessful;
  const factory EventsEvent.fetchEventsByClassFailed(
    String message,
  ) = _FetchEventsByClassFailed;

  const factory EventsEvent.errorMessage(String? message) = _ErrorMessage;
}
