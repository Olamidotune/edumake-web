import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/service_locator.dart';

import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/events/event_clients.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_class.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_data.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_id/event_id_data.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_id/event_id_response.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_model.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_response.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/previous_event.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/upcoming_event.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';

import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'events_bloc.freezed.dart';
part 'events_event.dart';
part 'events_state.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  EventsBloc() : super(const EventsState()) {
    // on<_Init>(_init);

    on<_OnEventTitleChanged>(_onEventTitleChanged);
    on<_OnEventRecipients>(_onEventRecipients);
    on<_OnEventDateChanged>(_onEventDateChanged);
    on<_OnEventDetailsChanged>(_onEventDetailsChanged);
    on<_AddEvents>(_addEvents);
    on<_AddEventsSuccessful>(_addEventsSuccessful);
    on<_AddEventsFailed>(_addEventsFailed);
    on<_FetchEvents>(_fetchEvents);
    on<_FetchEventsSuccessful>(_fetchEventsSuccessful);
    on<_FetchEventsFailed>(_fetchEventsFailed);
    on<_FetchEventsById>(_fetchEventById);
    on<_FetchEventsSuccessfulById>(_fetchEventByIdSuccessful);
    on<_FetchEventsFailedById>(_fetchEventByIdFailed);
    on<_ErrorMessage>(_errorMessage);
    on<_DeleteEvent>(_deleteEvent);
    on<_DeleteEventSuccessful>(_deleteEventSuccessful);
    on<_DeleteEventFailed>(_deleteEventFailed);

    // add(const _Init());
  }

  void _onEventTitleChanged(
    _OnEventTitleChanged event,
    Emitter<EventsState> emit,
  ) {
    final eventTitle = EventTitleFormz.dirty(event.eventTitle);
    emit(
      state.copyWith(
        eventTitle: eventTitle.isNotValid
            ? EventTitleFormz.dirty(event.eventTitle)
            : eventTitle,
      ),
    );
  }

  void _onEventRecipients(
    _OnEventRecipients event,
    Emitter<EventsState> emit,
  ) async {
    emit(state.copyWith(eventRecipients: event.eventRecipients));
  }

  void _onEventDateChanged(
    _OnEventDateChanged event,
    Emitter<EventsState> emit,
  ) async {
    emit(state.copyWith(eventDate: event.eventDate));
  }

  void _onEventDetailsChanged(
    _OnEventDetailsChanged event,
    Emitter<EventsState> emit,
  ) {
    final eventDetails = EventTitleFormz.dirty(event.eventDetails);
    emit(
      state.copyWith(
        eventTitle: eventDetails.isNotValid
            ? EventTitleFormz.dirty(event.eventDetails)
            : eventDetails,
      ),
    );
  }

  void _addEvents(_AddEvents event, Emitter<EventsState> emit) async {
    if (state.uploadEventStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(state.copyWith(uploadEventStatus: FormzSubmissionStatus.inProgress));

    emit(
      state.copyWith(
        eventTitle: state.eventTitle,
        eventRecipients: state.eventRecipients,
        eventDate: state.eventDate,
        eventImage: state.eventImage,
      ),
    );

    try {
      // Emit success event
    } catch (error, trace) {
      // Log the error (if needed)
      onError(error, trace);

      // Handle DioError specifically
      if (error is DioError) {
        final errorMessage = error.response?.data['message'] as String?;
        add(_AddEventsFailed(errorMessage ?? 'An unexpected error occurred'));
      } else {
        // Handle generic errors
        add(const _AddEventsFailed('An unexpected error occurred'));
      }
    }
  }

  void _addEventsSuccessful(
    _AddEventsSuccessful event,
    Emitter<EventsState> emit,
  ) {
    emit(
      state.copyWith(
        uploadEventStatus: FormzSubmissionStatus.success,
      ),
    );
  }

  void _addEventsFailed(_AddEventsFailed event, Emitter<EventsState> emit) {
    emit(
      state.copyWith(
        uploadEventStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message,
      ),
    );
  }

////////////////////////////////////////////////////////////////////////////////
  ///FETCH EVENTS
////////////////////////////////////////////////////////////////////////////////

  void _fetchEvents(_FetchEvents event, Emitter<EventsState> emit) async {
    if (state.fetchEventStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(
      state.copyWith(
        fetchEventStatus: FormzSubmissionStatus.inProgress,
      ),
    );
    try {
      final response = await locator<EventClients>().fetchEvents(
        await getAuthorization(),
        event.schoolId ?? await getSchoolID(),
      );

      add(_FetchEventsSuccessful(response));
    } catch (error, trace) {
      logError(error, trace);
      add(const _FetchEventsFailed('Error parsing response'));
    }
  }

  void _fetchEventsSuccessful(
    _FetchEventsSuccessful event,
    Emitter<EventsState> emit,
  ) {
    emit(
      state.copyWith(
          fetchEventStatus: FormzSubmissionStatus.success,
          eventResponse: event.response,
          upComingEvent: event.response.data.upcomingEvents,
          previousEvent: event.response.data.previousEvents,
          eventData: event.response.data),
    );
  }

  void _fetchEventsFailed(_FetchEventsFailed event, Emitter<EventsState> emit) {
    emit(state.copyWith(
      errorMessage: state.errorMessage,
    ));
  }
////////////////////////////////////////////////////////////////////////////////
  ///FETCH EVENTS BY ID
////////////////////////////////////////////////////////////////////////////////

  void _fetchEventById(
      _FetchEventsById event, Emitter<EventsState> emit) async {
    if (state.fetchEventByIdStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(
        state.copyWith(fetchEventByIdStatus: FormzSubmissionStatus.inProgress));
    try {
      final response = await locator<EventClients>().fetchEventByID(
        await getAuthorization(),
        event.eventId,
      );

      add(_FetchEventsSuccessfulById(response));
    } catch (error, trace) {
      logError(error, trace);
      add(const _FetchEventsFailedById('Error parsing response'));
    }
  }

  void _fetchEventByIdSuccessful(
    _FetchEventsSuccessfulById event,
    Emitter<EventsState> emit,
  ) {
    emit(
      state.copyWith(
        fetchEventByIdStatus: FormzSubmissionStatus.success,
        eventIdResponse: event.response,
        eventIdData: event.response.data,
        eventClass: event.response.data.classes,
      ),
    );
  }

  void _fetchEventByIdFailed(
      _FetchEventsFailedById event, Emitter<EventsState> emit) {
    emit(state.copyWith(
      errorMessage: state.errorMessage,
      fetchEventByIdStatus: FormzSubmissionStatus.failure,
    ));
  }

////////////////////////////////////////////////////////////////////////////////
  ///DELETE EVENTS
////////////////////////////////////////////////////////////////////////////////

  void _deleteEvent(_DeleteEvent event, Emitter<EventsState> emit) async {
    if (state.deleteEventStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(state.copyWith(deleteEventStatus: FormzSubmissionStatus.inProgress));

    try {
      await locator<EventClients>().deleteEvent(
          await getAuthorization(), await getSchoolID(), event.eventId);

      add(const _DeleteEventSuccessful('Event Deleted Successfully'));
    } catch (error, trace) {
      logError(error, trace);
      add(const _DeleteEventFailed('Error Deleting Event'));
    }
  }

  void _deleteEventSuccessful(
    _DeleteEventSuccessful event,
    Emitter<EventsState> emit,
  ) {
    emit(
      state.copyWith(
        deleteEventStatus: FormzSubmissionStatus.success,
      ),
    );
  }

  void _deleteEventFailed(_DeleteEventFailed event, Emitter<EventsState> emit) {
    emit(
      state.copyWith(
        deleteEventStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message,
      ),
    );
  }

  void _errorMessage(_ErrorMessage event, Emitter<EventsState> emit) {
    emit(state.copyWith(errorMessage: event.message ?? 'An error occurred'));
  }
}
