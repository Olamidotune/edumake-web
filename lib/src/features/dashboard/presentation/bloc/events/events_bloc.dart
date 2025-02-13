// ignore_for_file: require_trailing_commas

import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/service_locator.dart';

import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/events/event_clients.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_model.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_response.dart';
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
    on<_ErrorMessage>(_errorMessage);

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
        eventClasses: state.eventClasses,
        eventImage: state.eventImage,
      ),
    );

    logInfo({
      state.eventTitle.value.trim(),
      ['1,2,3'],
      state.eventDate ?? '',
      state.eventDetails.value.trim(),
      state.eventClasses ?? [],
      // state.eventImage as File,
    });

    try {
      final events = await locator<EventClients>().createEvent(
        await getAuthorization(),
        await getSchoolID(),
        state.eventTitle.value.trim(),
        ['1,2,3'],
        state.eventDate ?? '',
        state.eventDetails.value.trim(),
        state.eventClasses ?? [],
        state.eventImage as File,
      );

      // Emit success event
      add(EventsEvent.addEventsSuccessful(events));
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

    emit(state.copyWith(fetchEventStatus: FormzSubmissionStatus.inProgress));
    try {
      final response = await locator<EventClients>().fetchEvents(
        await getAuthorization(),
        await getSchoolID(),
      );

      add(_FetchEventsSuccessful(response));
    } catch (e) {
      print('Error parsing response: $e');
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
        eventResponse: state.eventResponse,
      ),
    );
  }

  void _fetchEventsFailed(_FetchEventsFailed event, Emitter<EventsState> emit) {
    emit(state.copyWith(
      errorMessage: state.errorMessage,
    ));
  }

  void _errorMessage(_ErrorMessage event, Emitter<EventsState> emit) {
    emit(state.copyWith(errorMessage: event.message ?? 'An error occurred'));
  }
}
