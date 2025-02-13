part of 'events_bloc.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState({
    EventModel? eventModel,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus uploadEventStatus,
    @Default(EventTitleFormz.pure()) EventTitleFormz eventTitle,
    @Default(EventDetailsFormz.pure()) EventDetailsFormz eventDetails,
    String? eventRecipients,
    String? eventDate,
    List<String>? associatedEvents,
    // List<String>? eventClasses,
    File? eventImage,

////////////////////////////////////////////////////////////////////////////////
    ///FETCH EVENTS
////////////////////////////////////////////////////////////////////////////////

    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchEventStatus,
    EventResponse? eventResponse,
    List<UpcomingEvent>? upComingEvent,
    EventData? eventData,

////////////////////////////////////////////////////////////////////////////////
    ///FETCH EVENTS BY ID
////////////////////////////////////////////////////////////////////////////////

    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchEventByIdStatus,
    EventIdResponse? eventIdResponse,
    EventIdData? eventIdData,
    String? errorMessage,
  }) = _EventsState;

  const EventsState._();
}

//==============================================================================
// FORMZ -  EVENT TITLE
//==============================================================================
class EventTitleFormz extends FormzInput<String, ValidationError> {
  const EventTitleFormz.pure([String value = '']) : super.pure(value);
  const EventTitleFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 3) return ValidationError.short;

    return null;
  }
}

//==============================================================================
// FORMZ -  EVENT DETAILS
//==============================================================================

class EventDetailsFormz extends FormzInput<String, ValidationError> {
  const EventDetailsFormz.pure([String value = '']) : super.pure(value);
  const EventDetailsFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 3) return ValidationError.short;

    return null;
  }
}
