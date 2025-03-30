// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsEventCopyWith<$Res> {
  factory $EventsEventCopyWith(
          EventsEvent value, $Res Function(EventsEvent) then) =
      _$EventsEventCopyWithImpl<$Res, EventsEvent>;
}

/// @nodoc
class _$EventsEventCopyWithImpl<$Res, $Val extends EventsEvent>
    implements $EventsEventCopyWith<$Res> {
  _$EventsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EventsEventImplCopyWith<$Res> {
  factory _$$EventsEventImplCopyWith(
          _$EventsEventImpl value, $Res Function(_$EventsEventImpl) then) =
      __$$EventsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventsEventImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$EventsEventImpl>
    implements _$$EventsEventImplCopyWith<$Res> {
  __$$EventsEventImplCopyWithImpl(
      _$EventsEventImpl _value, $Res Function(_$EventsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EventsEventImpl implements _EventsEvent {
  const _$EventsEventImpl();

  @override
  String toString() {
    return 'EventsEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EventsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _EventsEvent implements EventsEvent {
  const factory _EventsEvent() = _$EventsEventImpl;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'EventsEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements EventsEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$AddEventsImplCopyWith<$Res> {
  factory _$$AddEventsImplCopyWith(
          _$AddEventsImpl value, $Res Function(_$AddEventsImpl) then) =
      __$$AddEventsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddEventsImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$AddEventsImpl>
    implements _$$AddEventsImplCopyWith<$Res> {
  __$$AddEventsImplCopyWithImpl(
      _$AddEventsImpl _value, $Res Function(_$AddEventsImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddEventsImpl implements _AddEvents {
  const _$AddEventsImpl();

  @override
  String toString() {
    return 'EventsEvent.addEvents()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddEventsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return addEvents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return addEvents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (addEvents != null) {
      return addEvents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return addEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return addEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (addEvents != null) {
      return addEvents(this);
    }
    return orElse();
  }
}

abstract class _AddEvents implements EventsEvent {
  const factory _AddEvents() = _$AddEventsImpl;
}

/// @nodoc
abstract class _$$AddEventsSuccessfulImplCopyWith<$Res> {
  factory _$$AddEventsSuccessfulImplCopyWith(_$AddEventsSuccessfulImpl value,
          $Res Function(_$AddEventsSuccessfulImpl) then) =
      __$$AddEventsSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventModel eventModel});
}

/// @nodoc
class __$$AddEventsSuccessfulImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$AddEventsSuccessfulImpl>
    implements _$$AddEventsSuccessfulImplCopyWith<$Res> {
  __$$AddEventsSuccessfulImplCopyWithImpl(_$AddEventsSuccessfulImpl _value,
      $Res Function(_$AddEventsSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventModel = null,
  }) {
    return _then(_$AddEventsSuccessfulImpl(
      null == eventModel
          ? _value.eventModel
          : eventModel // ignore: cast_nullable_to_non_nullable
              as EventModel,
    ));
  }
}

/// @nodoc

class _$AddEventsSuccessfulImpl implements _AddEventsSuccessful {
  const _$AddEventsSuccessfulImpl(this.eventModel);

  @override
  final EventModel eventModel;

  @override
  String toString() {
    return 'EventsEvent.addEventsSuccessful(eventModel: $eventModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEventsSuccessfulImpl &&
            (identical(other.eventModel, eventModel) ||
                other.eventModel == eventModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventModel);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEventsSuccessfulImplCopyWith<_$AddEventsSuccessfulImpl> get copyWith =>
      __$$AddEventsSuccessfulImplCopyWithImpl<_$AddEventsSuccessfulImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return addEventsSuccessful(eventModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return addEventsSuccessful?.call(eventModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (addEventsSuccessful != null) {
      return addEventsSuccessful(eventModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return addEventsSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return addEventsSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (addEventsSuccessful != null) {
      return addEventsSuccessful(this);
    }
    return orElse();
  }
}

abstract class _AddEventsSuccessful implements EventsEvent {
  const factory _AddEventsSuccessful(final EventModel eventModel) =
      _$AddEventsSuccessfulImpl;

  EventModel get eventModel;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddEventsSuccessfulImplCopyWith<_$AddEventsSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddEventsFailedImplCopyWith<$Res> {
  factory _$$AddEventsFailedImplCopyWith(_$AddEventsFailedImpl value,
          $Res Function(_$AddEventsFailedImpl) then) =
      __$$AddEventsFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$AddEventsFailedImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$AddEventsFailedImpl>
    implements _$$AddEventsFailedImplCopyWith<$Res> {
  __$$AddEventsFailedImplCopyWithImpl(
      _$AddEventsFailedImpl _value, $Res Function(_$AddEventsFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AddEventsFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddEventsFailedImpl implements _AddEventsFailed {
  const _$AddEventsFailedImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'EventsEvent.addEventsFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEventsFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEventsFailedImplCopyWith<_$AddEventsFailedImpl> get copyWith =>
      __$$AddEventsFailedImplCopyWithImpl<_$AddEventsFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return addEventsFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return addEventsFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (addEventsFailed != null) {
      return addEventsFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return addEventsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return addEventsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (addEventsFailed != null) {
      return addEventsFailed(this);
    }
    return orElse();
  }
}

abstract class _AddEventsFailed implements EventsEvent {
  const factory _AddEventsFailed(final String? message) = _$AddEventsFailedImpl;

  String? get message;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddEventsFailedImplCopyWith<_$AddEventsFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnEventTitleChangedImplCopyWith<$Res> {
  factory _$$OnEventTitleChangedImplCopyWith(_$OnEventTitleChangedImpl value,
          $Res Function(_$OnEventTitleChangedImpl) then) =
      __$$OnEventTitleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventTitle});
}

/// @nodoc
class __$$OnEventTitleChangedImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$OnEventTitleChangedImpl>
    implements _$$OnEventTitleChangedImplCopyWith<$Res> {
  __$$OnEventTitleChangedImplCopyWithImpl(_$OnEventTitleChangedImpl _value,
      $Res Function(_$OnEventTitleChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventTitle = null,
  }) {
    return _then(_$OnEventTitleChangedImpl(
      null == eventTitle
          ? _value.eventTitle
          : eventTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnEventTitleChangedImpl implements _OnEventTitleChanged {
  const _$OnEventTitleChangedImpl(this.eventTitle);

  @override
  final String eventTitle;

  @override
  String toString() {
    return 'EventsEvent.onEventTitleChanged(eventTitle: $eventTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnEventTitleChangedImpl &&
            (identical(other.eventTitle, eventTitle) ||
                other.eventTitle == eventTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventTitle);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnEventTitleChangedImplCopyWith<_$OnEventTitleChangedImpl> get copyWith =>
      __$$OnEventTitleChangedImplCopyWithImpl<_$OnEventTitleChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return onEventTitleChanged(eventTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return onEventTitleChanged?.call(eventTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (onEventTitleChanged != null) {
      return onEventTitleChanged(eventTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return onEventTitleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return onEventTitleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (onEventTitleChanged != null) {
      return onEventTitleChanged(this);
    }
    return orElse();
  }
}

abstract class _OnEventTitleChanged implements EventsEvent {
  const factory _OnEventTitleChanged(final String eventTitle) =
      _$OnEventTitleChangedImpl;

  String get eventTitle;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnEventTitleChangedImplCopyWith<_$OnEventTitleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnEventRecipientsImplCopyWith<$Res> {
  factory _$$OnEventRecipientsImplCopyWith(_$OnEventRecipientsImpl value,
          $Res Function(_$OnEventRecipientsImpl) then) =
      __$$OnEventRecipientsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventRecipients});
}

/// @nodoc
class __$$OnEventRecipientsImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$OnEventRecipientsImpl>
    implements _$$OnEventRecipientsImplCopyWith<$Res> {
  __$$OnEventRecipientsImplCopyWithImpl(_$OnEventRecipientsImpl _value,
      $Res Function(_$OnEventRecipientsImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventRecipients = null,
  }) {
    return _then(_$OnEventRecipientsImpl(
      null == eventRecipients
          ? _value.eventRecipients
          : eventRecipients // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnEventRecipientsImpl implements _OnEventRecipients {
  const _$OnEventRecipientsImpl(this.eventRecipients);

  @override
  final String eventRecipients;

  @override
  String toString() {
    return 'EventsEvent.onEventRecipients(eventRecipients: $eventRecipients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnEventRecipientsImpl &&
            (identical(other.eventRecipients, eventRecipients) ||
                other.eventRecipients == eventRecipients));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventRecipients);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnEventRecipientsImplCopyWith<_$OnEventRecipientsImpl> get copyWith =>
      __$$OnEventRecipientsImplCopyWithImpl<_$OnEventRecipientsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return onEventRecipients(eventRecipients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return onEventRecipients?.call(eventRecipients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (onEventRecipients != null) {
      return onEventRecipients(eventRecipients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return onEventRecipients(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return onEventRecipients?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (onEventRecipients != null) {
      return onEventRecipients(this);
    }
    return orElse();
  }
}

abstract class _OnEventRecipients implements EventsEvent {
  const factory _OnEventRecipients(final String eventRecipients) =
      _$OnEventRecipientsImpl;

  String get eventRecipients;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnEventRecipientsImplCopyWith<_$OnEventRecipientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnEventDateChangedImplCopyWith<$Res> {
  factory _$$OnEventDateChangedImplCopyWith(_$OnEventDateChangedImpl value,
          $Res Function(_$OnEventDateChangedImpl) then) =
      __$$OnEventDateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventDate});
}

/// @nodoc
class __$$OnEventDateChangedImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$OnEventDateChangedImpl>
    implements _$$OnEventDateChangedImplCopyWith<$Res> {
  __$$OnEventDateChangedImplCopyWithImpl(_$OnEventDateChangedImpl _value,
      $Res Function(_$OnEventDateChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventDate = null,
  }) {
    return _then(_$OnEventDateChangedImpl(
      null == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnEventDateChangedImpl implements _OnEventDateChanged {
  const _$OnEventDateChangedImpl(this.eventDate);

  @override
  final String eventDate;

  @override
  String toString() {
    return 'EventsEvent.onEventDateChanged(eventDate: $eventDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnEventDateChangedImpl &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventDate);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnEventDateChangedImplCopyWith<_$OnEventDateChangedImpl> get copyWith =>
      __$$OnEventDateChangedImplCopyWithImpl<_$OnEventDateChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return onEventDateChanged(eventDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return onEventDateChanged?.call(eventDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (onEventDateChanged != null) {
      return onEventDateChanged(eventDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return onEventDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return onEventDateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (onEventDateChanged != null) {
      return onEventDateChanged(this);
    }
    return orElse();
  }
}

abstract class _OnEventDateChanged implements EventsEvent {
  const factory _OnEventDateChanged(final String eventDate) =
      _$OnEventDateChangedImpl;

  String get eventDate;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnEventDateChangedImplCopyWith<_$OnEventDateChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnEventDetailsChangedImplCopyWith<$Res> {
  factory _$$OnEventDetailsChangedImplCopyWith(
          _$OnEventDetailsChangedImpl value,
          $Res Function(_$OnEventDetailsChangedImpl) then) =
      __$$OnEventDetailsChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventDetails});
}

/// @nodoc
class __$$OnEventDetailsChangedImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$OnEventDetailsChangedImpl>
    implements _$$OnEventDetailsChangedImplCopyWith<$Res> {
  __$$OnEventDetailsChangedImplCopyWithImpl(_$OnEventDetailsChangedImpl _value,
      $Res Function(_$OnEventDetailsChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventDetails = null,
  }) {
    return _then(_$OnEventDetailsChangedImpl(
      null == eventDetails
          ? _value.eventDetails
          : eventDetails // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnEventDetailsChangedImpl implements _OnEventDetailsChanged {
  const _$OnEventDetailsChangedImpl(this.eventDetails);

  @override
  final String eventDetails;

  @override
  String toString() {
    return 'EventsEvent.onEventDetailsChanged(eventDetails: $eventDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnEventDetailsChangedImpl &&
            (identical(other.eventDetails, eventDetails) ||
                other.eventDetails == eventDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventDetails);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnEventDetailsChangedImplCopyWith<_$OnEventDetailsChangedImpl>
      get copyWith => __$$OnEventDetailsChangedImplCopyWithImpl<
          _$OnEventDetailsChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return onEventDetailsChanged(eventDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return onEventDetailsChanged?.call(eventDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (onEventDetailsChanged != null) {
      return onEventDetailsChanged(eventDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return onEventDetailsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return onEventDetailsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (onEventDetailsChanged != null) {
      return onEventDetailsChanged(this);
    }
    return orElse();
  }
}

abstract class _OnEventDetailsChanged implements EventsEvent {
  const factory _OnEventDetailsChanged(final String eventDetails) =
      _$OnEventDetailsChangedImpl;

  String get eventDetails;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnEventDetailsChangedImplCopyWith<_$OnEventDetailsChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchEventsImplCopyWith<$Res> {
  factory _$$FetchEventsImplCopyWith(
          _$FetchEventsImpl value, $Res Function(_$FetchEventsImpl) then) =
      __$$FetchEventsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? schoolId});
}

/// @nodoc
class __$$FetchEventsImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$FetchEventsImpl>
    implements _$$FetchEventsImplCopyWith<$Res> {
  __$$FetchEventsImplCopyWithImpl(
      _$FetchEventsImpl _value, $Res Function(_$FetchEventsImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = freezed,
  }) {
    return _then(_$FetchEventsImpl(
      freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchEventsImpl implements _FetchEvents {
  const _$FetchEventsImpl(this.schoolId);

  @override
  final String? schoolId;

  @override
  String toString() {
    return 'EventsEvent.fetchEvents(schoolId: $schoolId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchEventsImpl &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schoolId);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchEventsImplCopyWith<_$FetchEventsImpl> get copyWith =>
      __$$FetchEventsImplCopyWithImpl<_$FetchEventsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchEvents(schoolId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchEvents?.call(schoolId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEvents != null) {
      return fetchEvents(schoolId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEvents != null) {
      return fetchEvents(this);
    }
    return orElse();
  }
}

abstract class _FetchEvents implements EventsEvent {
  const factory _FetchEvents(final String? schoolId) = _$FetchEventsImpl;

  String? get schoolId;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchEventsImplCopyWith<_$FetchEventsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchEventsSuccessfulImplCopyWith<$Res> {
  factory _$$FetchEventsSuccessfulImplCopyWith(
          _$FetchEventsSuccessfulImpl value,
          $Res Function(_$FetchEventsSuccessfulImpl) then) =
      __$$FetchEventsSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventResponse response});
}

/// @nodoc
class __$$FetchEventsSuccessfulImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$FetchEventsSuccessfulImpl>
    implements _$$FetchEventsSuccessfulImplCopyWith<$Res> {
  __$$FetchEventsSuccessfulImplCopyWithImpl(_$FetchEventsSuccessfulImpl _value,
      $Res Function(_$FetchEventsSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$FetchEventsSuccessfulImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as EventResponse,
    ));
  }
}

/// @nodoc

class _$FetchEventsSuccessfulImpl implements _FetchEventsSuccessful {
  const _$FetchEventsSuccessfulImpl(this.response);

  @override
  final EventResponse response;

  @override
  String toString() {
    return 'EventsEvent.fetchEventsSuccessful(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchEventsSuccessfulImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchEventsSuccessfulImplCopyWith<_$FetchEventsSuccessfulImpl>
      get copyWith => __$$FetchEventsSuccessfulImplCopyWithImpl<
          _$FetchEventsSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchEventsSuccessful(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchEventsSuccessful?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEventsSuccessful != null) {
      return fetchEventsSuccessful(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchEventsSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchEventsSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEventsSuccessful != null) {
      return fetchEventsSuccessful(this);
    }
    return orElse();
  }
}

abstract class _FetchEventsSuccessful implements EventsEvent {
  const factory _FetchEventsSuccessful(final EventResponse response) =
      _$FetchEventsSuccessfulImpl;

  EventResponse get response;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchEventsSuccessfulImplCopyWith<_$FetchEventsSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchEventsFailedImplCopyWith<$Res> {
  factory _$$FetchEventsFailedImplCopyWith(_$FetchEventsFailedImpl value,
          $Res Function(_$FetchEventsFailedImpl) then) =
      __$$FetchEventsFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FetchEventsFailedImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$FetchEventsFailedImpl>
    implements _$$FetchEventsFailedImplCopyWith<$Res> {
  __$$FetchEventsFailedImplCopyWithImpl(_$FetchEventsFailedImpl _value,
      $Res Function(_$FetchEventsFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FetchEventsFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchEventsFailedImpl implements _FetchEventsFailed {
  const _$FetchEventsFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EventsEvent.fetchEventsFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchEventsFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchEventsFailedImplCopyWith<_$FetchEventsFailedImpl> get copyWith =>
      __$$FetchEventsFailedImplCopyWithImpl<_$FetchEventsFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchEventsFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchEventsFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEventsFailed != null) {
      return fetchEventsFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchEventsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchEventsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEventsFailed != null) {
      return fetchEventsFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchEventsFailed implements EventsEvent {
  const factory _FetchEventsFailed(final String message) =
      _$FetchEventsFailedImpl;

  String get message;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchEventsFailedImplCopyWith<_$FetchEventsFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchEventsByIdImplCopyWith<$Res> {
  factory _$$FetchEventsByIdImplCopyWith(_$FetchEventsByIdImpl value,
          $Res Function(_$FetchEventsByIdImpl) then) =
      __$$FetchEventsByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId});
}

/// @nodoc
class __$$FetchEventsByIdImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$FetchEventsByIdImpl>
    implements _$$FetchEventsByIdImplCopyWith<$Res> {
  __$$FetchEventsByIdImplCopyWithImpl(
      _$FetchEventsByIdImpl _value, $Res Function(_$FetchEventsByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_$FetchEventsByIdImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchEventsByIdImpl implements _FetchEventsById {
  const _$FetchEventsByIdImpl(this.eventId);

  @override
  final String eventId;

  @override
  String toString() {
    return 'EventsEvent.fetchEventsById(eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchEventsByIdImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchEventsByIdImplCopyWith<_$FetchEventsByIdImpl> get copyWith =>
      __$$FetchEventsByIdImplCopyWithImpl<_$FetchEventsByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchEventsById(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchEventsById?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEventsById != null) {
      return fetchEventsById(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchEventsById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchEventsById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEventsById != null) {
      return fetchEventsById(this);
    }
    return orElse();
  }
}

abstract class _FetchEventsById implements EventsEvent {
  const factory _FetchEventsById(final String eventId) = _$FetchEventsByIdImpl;

  String get eventId;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchEventsByIdImplCopyWith<_$FetchEventsByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchEventsSuccessfulByIdImplCopyWith<$Res> {
  factory _$$FetchEventsSuccessfulByIdImplCopyWith(
          _$FetchEventsSuccessfulByIdImpl value,
          $Res Function(_$FetchEventsSuccessfulByIdImpl) then) =
      __$$FetchEventsSuccessfulByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventIdResponse response});
}

/// @nodoc
class __$$FetchEventsSuccessfulByIdImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$FetchEventsSuccessfulByIdImpl>
    implements _$$FetchEventsSuccessfulByIdImplCopyWith<$Res> {
  __$$FetchEventsSuccessfulByIdImplCopyWithImpl(
      _$FetchEventsSuccessfulByIdImpl _value,
      $Res Function(_$FetchEventsSuccessfulByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$FetchEventsSuccessfulByIdImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as EventIdResponse,
    ));
  }
}

/// @nodoc

class _$FetchEventsSuccessfulByIdImpl implements _FetchEventsSuccessfulById {
  const _$FetchEventsSuccessfulByIdImpl(this.response);

  @override
  final EventIdResponse response;

  @override
  String toString() {
    return 'EventsEvent.fetchEventsSuccessfulById(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchEventsSuccessfulByIdImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchEventsSuccessfulByIdImplCopyWith<_$FetchEventsSuccessfulByIdImpl>
      get copyWith => __$$FetchEventsSuccessfulByIdImplCopyWithImpl<
          _$FetchEventsSuccessfulByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchEventsSuccessfulById(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchEventsSuccessfulById?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEventsSuccessfulById != null) {
      return fetchEventsSuccessfulById(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchEventsSuccessfulById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchEventsSuccessfulById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEventsSuccessfulById != null) {
      return fetchEventsSuccessfulById(this);
    }
    return orElse();
  }
}

abstract class _FetchEventsSuccessfulById implements EventsEvent {
  const factory _FetchEventsSuccessfulById(final EventIdResponse response) =
      _$FetchEventsSuccessfulByIdImpl;

  EventIdResponse get response;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchEventsSuccessfulByIdImplCopyWith<_$FetchEventsSuccessfulByIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchEventsFailedByIdImplCopyWith<$Res> {
  factory _$$FetchEventsFailedByIdImplCopyWith(
          _$FetchEventsFailedByIdImpl value,
          $Res Function(_$FetchEventsFailedByIdImpl) then) =
      __$$FetchEventsFailedByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FetchEventsFailedByIdImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$FetchEventsFailedByIdImpl>
    implements _$$FetchEventsFailedByIdImplCopyWith<$Res> {
  __$$FetchEventsFailedByIdImplCopyWithImpl(_$FetchEventsFailedByIdImpl _value,
      $Res Function(_$FetchEventsFailedByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FetchEventsFailedByIdImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchEventsFailedByIdImpl implements _FetchEventsFailedById {
  const _$FetchEventsFailedByIdImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EventsEvent.fetchEventsFailedById(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchEventsFailedByIdImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchEventsFailedByIdImplCopyWith<_$FetchEventsFailedByIdImpl>
      get copyWith => __$$FetchEventsFailedByIdImplCopyWithImpl<
          _$FetchEventsFailedByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchEventsFailedById(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchEventsFailedById?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEventsFailedById != null) {
      return fetchEventsFailedById(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchEventsFailedById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchEventsFailedById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEventsFailedById != null) {
      return fetchEventsFailedById(this);
    }
    return orElse();
  }
}

abstract class _FetchEventsFailedById implements EventsEvent {
  const factory _FetchEventsFailedById(final String message) =
      _$FetchEventsFailedByIdImpl;

  String get message;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchEventsFailedByIdImplCopyWith<_$FetchEventsFailedByIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditEventImplCopyWith<$Res> {
  factory _$$EditEventImplCopyWith(
          _$EditEventImpl value, $Res Function(_$EditEventImpl) then) =
      __$$EditEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId});
}

/// @nodoc
class __$$EditEventImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$EditEventImpl>
    implements _$$EditEventImplCopyWith<$Res> {
  __$$EditEventImplCopyWithImpl(
      _$EditEventImpl _value, $Res Function(_$EditEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_$EditEventImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditEventImpl implements _EditEvent {
  const _$EditEventImpl(this.eventId);

  @override
  final String eventId;

  @override
  String toString() {
    return 'EventsEvent.editEvent(eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditEventImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditEventImplCopyWith<_$EditEventImpl> get copyWith =>
      __$$EditEventImplCopyWithImpl<_$EditEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return editEvent(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return editEvent?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (editEvent != null) {
      return editEvent(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return editEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return editEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (editEvent != null) {
      return editEvent(this);
    }
    return orElse();
  }
}

abstract class _EditEvent implements EventsEvent {
  const factory _EditEvent(final String eventId) = _$EditEventImpl;

  String get eventId;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditEventImplCopyWith<_$EditEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditEventSuccessfulImplCopyWith<$Res> {
  factory _$$EditEventSuccessfulImplCopyWith(_$EditEventSuccessfulImpl value,
          $Res Function(_$EditEventSuccessfulImpl) then) =
      __$$EditEventSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$EditEventSuccessfulImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$EditEventSuccessfulImpl>
    implements _$$EditEventSuccessfulImplCopyWith<$Res> {
  __$$EditEventSuccessfulImplCopyWithImpl(_$EditEventSuccessfulImpl _value,
      $Res Function(_$EditEventSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$EditEventSuccessfulImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EditEventSuccessfulImpl implements _EditEventSuccessful {
  const _$EditEventSuccessfulImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'EventsEvent.editEventSuccessful(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditEventSuccessfulImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditEventSuccessfulImplCopyWith<_$EditEventSuccessfulImpl> get copyWith =>
      __$$EditEventSuccessfulImplCopyWithImpl<_$EditEventSuccessfulImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return editEventSuccessful(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return editEventSuccessful?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (editEventSuccessful != null) {
      return editEventSuccessful(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return editEventSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return editEventSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (editEventSuccessful != null) {
      return editEventSuccessful(this);
    }
    return orElse();
  }
}

abstract class _EditEventSuccessful implements EventsEvent {
  const factory _EditEventSuccessful(final String? message) =
      _$EditEventSuccessfulImpl;

  String? get message;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditEventSuccessfulImplCopyWith<_$EditEventSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditEventFailedImplCopyWith<$Res> {
  factory _$$EditEventFailedImplCopyWith(_$EditEventFailedImpl value,
          $Res Function(_$EditEventFailedImpl) then) =
      __$$EditEventFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$EditEventFailedImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$EditEventFailedImpl>
    implements _$$EditEventFailedImplCopyWith<$Res> {
  __$$EditEventFailedImplCopyWithImpl(
      _$EditEventFailedImpl _value, $Res Function(_$EditEventFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$EditEventFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EditEventFailedImpl implements _EditEventFailed {
  const _$EditEventFailedImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'EventsEvent.editEventFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditEventFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditEventFailedImplCopyWith<_$EditEventFailedImpl> get copyWith =>
      __$$EditEventFailedImplCopyWithImpl<_$EditEventFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return editEventFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return editEventFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (editEventFailed != null) {
      return editEventFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return editEventFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return editEventFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (editEventFailed != null) {
      return editEventFailed(this);
    }
    return orElse();
  }
}

abstract class _EditEventFailed implements EventsEvent {
  const factory _EditEventFailed(final String? message) = _$EditEventFailedImpl;

  String? get message;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditEventFailedImplCopyWith<_$EditEventFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteEventImplCopyWith<$Res> {
  factory _$$DeleteEventImplCopyWith(
          _$DeleteEventImpl value, $Res Function(_$DeleteEventImpl) then) =
      __$$DeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId});
}

/// @nodoc
class __$$DeleteEventImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$DeleteEventImpl>
    implements _$$DeleteEventImplCopyWith<$Res> {
  __$$DeleteEventImplCopyWithImpl(
      _$DeleteEventImpl _value, $Res Function(_$DeleteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_$DeleteEventImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteEventImpl implements _DeleteEvent {
  const _$DeleteEventImpl(this.eventId);

  @override
  final String eventId;

  @override
  String toString() {
    return 'EventsEvent.deleteEvent(eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEventImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      __$$DeleteEventImplCopyWithImpl<_$DeleteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return deleteEvent(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return deleteEvent?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return deleteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return deleteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(this);
    }
    return orElse();
  }
}

abstract class _DeleteEvent implements EventsEvent {
  const factory _DeleteEvent(final String eventId) = _$DeleteEventImpl;

  String get eventId;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteEventSuccessfulImplCopyWith<$Res> {
  factory _$$DeleteEventSuccessfulImplCopyWith(
          _$DeleteEventSuccessfulImpl value,
          $Res Function(_$DeleteEventSuccessfulImpl) then) =
      __$$DeleteEventSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$DeleteEventSuccessfulImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$DeleteEventSuccessfulImpl>
    implements _$$DeleteEventSuccessfulImplCopyWith<$Res> {
  __$$DeleteEventSuccessfulImplCopyWithImpl(_$DeleteEventSuccessfulImpl _value,
      $Res Function(_$DeleteEventSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$DeleteEventSuccessfulImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteEventSuccessfulImpl implements _DeleteEventSuccessful {
  const _$DeleteEventSuccessfulImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'EventsEvent.deleteEventSuccessful(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEventSuccessfulImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEventSuccessfulImplCopyWith<_$DeleteEventSuccessfulImpl>
      get copyWith => __$$DeleteEventSuccessfulImplCopyWithImpl<
          _$DeleteEventSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return deleteEventSuccessful(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return deleteEventSuccessful?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (deleteEventSuccessful != null) {
      return deleteEventSuccessful(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return deleteEventSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return deleteEventSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (deleteEventSuccessful != null) {
      return deleteEventSuccessful(this);
    }
    return orElse();
  }
}

abstract class _DeleteEventSuccessful implements EventsEvent {
  const factory _DeleteEventSuccessful(final String? message) =
      _$DeleteEventSuccessfulImpl;

  String? get message;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteEventSuccessfulImplCopyWith<_$DeleteEventSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteEventFailedImplCopyWith<$Res> {
  factory _$$DeleteEventFailedImplCopyWith(_$DeleteEventFailedImpl value,
          $Res Function(_$DeleteEventFailedImpl) then) =
      __$$DeleteEventFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$DeleteEventFailedImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$DeleteEventFailedImpl>
    implements _$$DeleteEventFailedImplCopyWith<$Res> {
  __$$DeleteEventFailedImplCopyWithImpl(_$DeleteEventFailedImpl _value,
      $Res Function(_$DeleteEventFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$DeleteEventFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteEventFailedImpl implements _DeleteEventFailed {
  const _$DeleteEventFailedImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'EventsEvent.deleteEventFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEventFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEventFailedImplCopyWith<_$DeleteEventFailedImpl> get copyWith =>
      __$$DeleteEventFailedImplCopyWithImpl<_$DeleteEventFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return deleteEventFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return deleteEventFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (deleteEventFailed != null) {
      return deleteEventFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return deleteEventFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return deleteEventFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (deleteEventFailed != null) {
      return deleteEventFailed(this);
    }
    return orElse();
  }
}

abstract class _DeleteEventFailed implements EventsEvent {
  const factory _DeleteEventFailed(final String? message) =
      _$DeleteEventFailedImpl;

  String? get message;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteEventFailedImplCopyWith<_$DeleteEventFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchEventsByClassImplCopyWith<$Res> {
  factory _$$FetchEventsByClassImplCopyWith(_$FetchEventsByClassImpl value,
          $Res Function(_$FetchEventsByClassImpl) then) =
      __$$FetchEventsByClassImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? schoolId, String classId});
}

/// @nodoc
class __$$FetchEventsByClassImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$FetchEventsByClassImpl>
    implements _$$FetchEventsByClassImplCopyWith<$Res> {
  __$$FetchEventsByClassImplCopyWithImpl(_$FetchEventsByClassImpl _value,
      $Res Function(_$FetchEventsByClassImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = freezed,
    Object? classId = null,
  }) {
    return _then(_$FetchEventsByClassImpl(
      freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String?,
      null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchEventsByClassImpl implements _FetchEventsByClass {
  const _$FetchEventsByClassImpl(this.schoolId, this.classId);

  @override
  final String? schoolId;
  @override
  final String classId;

  @override
  String toString() {
    return 'EventsEvent.fetchEventsByClass(schoolId: $schoolId, classId: $classId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchEventsByClassImpl &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schoolId, classId);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchEventsByClassImplCopyWith<_$FetchEventsByClassImpl> get copyWith =>
      __$$FetchEventsByClassImplCopyWithImpl<_$FetchEventsByClassImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchEventsByClass(schoolId, classId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchEventsByClass?.call(schoolId, classId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEventsByClass != null) {
      return fetchEventsByClass(schoolId, classId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchEventsByClass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchEventsByClass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEventsByClass != null) {
      return fetchEventsByClass(this);
    }
    return orElse();
  }
}

abstract class _FetchEventsByClass implements EventsEvent {
  const factory _FetchEventsByClass(
      final String? schoolId, final String classId) = _$FetchEventsByClassImpl;

  String? get schoolId;
  String get classId;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchEventsByClassImplCopyWith<_$FetchEventsByClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchEventsByClassSuccessfulImplCopyWith<$Res> {
  factory _$$FetchEventsByClassSuccessfulImplCopyWith(
          _$FetchEventsByClassSuccessfulImpl value,
          $Res Function(_$FetchEventsByClassSuccessfulImpl) then) =
      __$$FetchEventsByClassSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventResponse response});
}

/// @nodoc
class __$$FetchEventsByClassSuccessfulImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$FetchEventsByClassSuccessfulImpl>
    implements _$$FetchEventsByClassSuccessfulImplCopyWith<$Res> {
  __$$FetchEventsByClassSuccessfulImplCopyWithImpl(
      _$FetchEventsByClassSuccessfulImpl _value,
      $Res Function(_$FetchEventsByClassSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$FetchEventsByClassSuccessfulImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as EventResponse,
    ));
  }
}

/// @nodoc

class _$FetchEventsByClassSuccessfulImpl
    implements _FetchEventsByClassSuccessful {
  const _$FetchEventsByClassSuccessfulImpl(this.response);

  @override
  final EventResponse response;

  @override
  String toString() {
    return 'EventsEvent.fetchEventsByClassSuccessful(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchEventsByClassSuccessfulImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchEventsByClassSuccessfulImplCopyWith<
          _$FetchEventsByClassSuccessfulImpl>
      get copyWith => __$$FetchEventsByClassSuccessfulImplCopyWithImpl<
          _$FetchEventsByClassSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchEventsByClassSuccessful(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchEventsByClassSuccessful?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEventsByClassSuccessful != null) {
      return fetchEventsByClassSuccessful(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchEventsByClassSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchEventsByClassSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEventsByClassSuccessful != null) {
      return fetchEventsByClassSuccessful(this);
    }
    return orElse();
  }
}

abstract class _FetchEventsByClassSuccessful implements EventsEvent {
  const factory _FetchEventsByClassSuccessful(final EventResponse response) =
      _$FetchEventsByClassSuccessfulImpl;

  EventResponse get response;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchEventsByClassSuccessfulImplCopyWith<
          _$FetchEventsByClassSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchEventsByClassFailedImplCopyWith<$Res> {
  factory _$$FetchEventsByClassFailedImplCopyWith(
          _$FetchEventsByClassFailedImpl value,
          $Res Function(_$FetchEventsByClassFailedImpl) then) =
      __$$FetchEventsByClassFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FetchEventsByClassFailedImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$FetchEventsByClassFailedImpl>
    implements _$$FetchEventsByClassFailedImplCopyWith<$Res> {
  __$$FetchEventsByClassFailedImplCopyWithImpl(
      _$FetchEventsByClassFailedImpl _value,
      $Res Function(_$FetchEventsByClassFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FetchEventsByClassFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchEventsByClassFailedImpl implements _FetchEventsByClassFailed {
  const _$FetchEventsByClassFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EventsEvent.fetchEventsByClassFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchEventsByClassFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchEventsByClassFailedImplCopyWith<_$FetchEventsByClassFailedImpl>
      get copyWith => __$$FetchEventsByClassFailedImplCopyWithImpl<
          _$FetchEventsByClassFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchEventsByClassFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchEventsByClassFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEventsByClassFailed != null) {
      return fetchEventsByClassFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchEventsByClassFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchEventsByClassFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchEventsByClassFailed != null) {
      return fetchEventsByClassFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchEventsByClassFailed implements EventsEvent {
  const factory _FetchEventsByClassFailed(final String message) =
      _$FetchEventsByClassFailedImpl;

  String get message;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchEventsByClassFailedImplCopyWith<_$FetchEventsByClassFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorMessageImplCopyWith<$Res> {
  factory _$$ErrorMessageImplCopyWith(
          _$ErrorMessageImpl value, $Res Function(_$ErrorMessageImpl) then) =
      __$$ErrorMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorMessageImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$ErrorMessageImpl>
    implements _$$ErrorMessageImplCopyWith<$Res> {
  __$$ErrorMessageImplCopyWithImpl(
      _$ErrorMessageImpl _value, $Res Function(_$ErrorMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorMessageImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorMessageImpl implements _ErrorMessage {
  const _$ErrorMessageImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'EventsEvent.errorMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMessageImplCopyWith<_$ErrorMessageImpl> get copyWith =>
      __$$ErrorMessageImplCopyWithImpl<_$ErrorMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() init,
    required TResult Function() addEvents,
    required TResult Function(EventModel eventModel) addEventsSuccessful,
    required TResult Function(String? message) addEventsFailed,
    required TResult Function(String eventTitle) onEventTitleChanged,
    required TResult Function(String eventRecipients) onEventRecipients,
    required TResult Function(String eventDate) onEventDateChanged,
    required TResult Function(String eventDetails) onEventDetailsChanged,
    required TResult Function(String? schoolId) fetchEvents,
    required TResult Function(EventResponse response) fetchEventsSuccessful,
    required TResult Function(String message) fetchEventsFailed,
    required TResult Function(String eventId) fetchEventsById,
    required TResult Function(EventIdResponse response)
        fetchEventsSuccessfulById,
    required TResult Function(String message) fetchEventsFailedById,
    required TResult Function(String eventId) editEvent,
    required TResult Function(String? message) editEventSuccessful,
    required TResult Function(String? message) editEventFailed,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(String? message) deleteEventSuccessful,
    required TResult Function(String? message) deleteEventFailed,
    required TResult Function(String? schoolId, String classId)
        fetchEventsByClass,
    required TResult Function(EventResponse response)
        fetchEventsByClassSuccessful,
    required TResult Function(String message) fetchEventsByClassFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return errorMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? init,
    TResult? Function()? addEvents,
    TResult? Function(EventModel eventModel)? addEventsSuccessful,
    TResult? Function(String? message)? addEventsFailed,
    TResult? Function(String eventTitle)? onEventTitleChanged,
    TResult? Function(String eventRecipients)? onEventRecipients,
    TResult? Function(String eventDate)? onEventDateChanged,
    TResult? Function(String eventDetails)? onEventDetailsChanged,
    TResult? Function(String? schoolId)? fetchEvents,
    TResult? Function(EventResponse response)? fetchEventsSuccessful,
    TResult? Function(String message)? fetchEventsFailed,
    TResult? Function(String eventId)? fetchEventsById,
    TResult? Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult? Function(String message)? fetchEventsFailedById,
    TResult? Function(String eventId)? editEvent,
    TResult? Function(String? message)? editEventSuccessful,
    TResult? Function(String? message)? editEventFailed,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(String? message)? deleteEventSuccessful,
    TResult? Function(String? message)? deleteEventFailed,
    TResult? Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult? Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult? Function(String message)? fetchEventsByClassFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return errorMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? init,
    TResult Function()? addEvents,
    TResult Function(EventModel eventModel)? addEventsSuccessful,
    TResult Function(String? message)? addEventsFailed,
    TResult Function(String eventTitle)? onEventTitleChanged,
    TResult Function(String eventRecipients)? onEventRecipients,
    TResult Function(String eventDate)? onEventDateChanged,
    TResult Function(String eventDetails)? onEventDetailsChanged,
    TResult Function(String? schoolId)? fetchEvents,
    TResult Function(EventResponse response)? fetchEventsSuccessful,
    TResult Function(String message)? fetchEventsFailed,
    TResult Function(String eventId)? fetchEventsById,
    TResult Function(EventIdResponse response)? fetchEventsSuccessfulById,
    TResult Function(String message)? fetchEventsFailedById,
    TResult Function(String eventId)? editEvent,
    TResult Function(String? message)? editEventSuccessful,
    TResult Function(String? message)? editEventFailed,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(String? message)? deleteEventSuccessful,
    TResult Function(String? message)? deleteEventFailed,
    TResult Function(String? schoolId, String classId)? fetchEventsByClass,
    TResult Function(EventResponse response)? fetchEventsByClassSuccessful,
    TResult Function(String message)? fetchEventsByClassFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (errorMessage != null) {
      return errorMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EventsEvent value) $default, {
    required TResult Function(_Init value) init,
    required TResult Function(_AddEvents value) addEvents,
    required TResult Function(_AddEventsSuccessful value) addEventsSuccessful,
    required TResult Function(_AddEventsFailed value) addEventsFailed,
    required TResult Function(_OnEventTitleChanged value) onEventTitleChanged,
    required TResult Function(_OnEventRecipients value) onEventRecipients,
    required TResult Function(_OnEventDateChanged value) onEventDateChanged,
    required TResult Function(_OnEventDetailsChanged value)
        onEventDetailsChanged,
    required TResult Function(_FetchEvents value) fetchEvents,
    required TResult Function(_FetchEventsSuccessful value)
        fetchEventsSuccessful,
    required TResult Function(_FetchEventsFailed value) fetchEventsFailed,
    required TResult Function(_FetchEventsById value) fetchEventsById,
    required TResult Function(_FetchEventsSuccessfulById value)
        fetchEventsSuccessfulById,
    required TResult Function(_FetchEventsFailedById value)
        fetchEventsFailedById,
    required TResult Function(_EditEvent value) editEvent,
    required TResult Function(_EditEventSuccessful value) editEventSuccessful,
    required TResult Function(_EditEventFailed value) editEventFailed,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_DeleteEventSuccessful value)
        deleteEventSuccessful,
    required TResult Function(_DeleteEventFailed value) deleteEventFailed,
    required TResult Function(_FetchEventsByClass value) fetchEventsByClass,
    required TResult Function(_FetchEventsByClassSuccessful value)
        fetchEventsByClassSuccessful,
    required TResult Function(_FetchEventsByClassFailed value)
        fetchEventsByClassFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return errorMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EventsEvent value)? $default, {
    TResult? Function(_Init value)? init,
    TResult? Function(_AddEvents value)? addEvents,
    TResult? Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult? Function(_AddEventsFailed value)? addEventsFailed,
    TResult? Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult? Function(_OnEventRecipients value)? onEventRecipients,
    TResult? Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult? Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult? Function(_FetchEvents value)? fetchEvents,
    TResult? Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult? Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult? Function(_FetchEventsById value)? fetchEventsById,
    TResult? Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult? Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult? Function(_EditEvent value)? editEvent,
    TResult? Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult? Function(_EditEventFailed value)? editEventFailed,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult? Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult? Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult? Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult? Function(_FetchEventsByClassFailed value)?
        fetchEventsByClassFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return errorMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EventsEvent value)? $default, {
    TResult Function(_Init value)? init,
    TResult Function(_AddEvents value)? addEvents,
    TResult Function(_AddEventsSuccessful value)? addEventsSuccessful,
    TResult Function(_AddEventsFailed value)? addEventsFailed,
    TResult Function(_OnEventTitleChanged value)? onEventTitleChanged,
    TResult Function(_OnEventRecipients value)? onEventRecipients,
    TResult Function(_OnEventDateChanged value)? onEventDateChanged,
    TResult Function(_OnEventDetailsChanged value)? onEventDetailsChanged,
    TResult Function(_FetchEvents value)? fetchEvents,
    TResult Function(_FetchEventsSuccessful value)? fetchEventsSuccessful,
    TResult Function(_FetchEventsFailed value)? fetchEventsFailed,
    TResult Function(_FetchEventsById value)? fetchEventsById,
    TResult Function(_FetchEventsSuccessfulById value)?
        fetchEventsSuccessfulById,
    TResult Function(_FetchEventsFailedById value)? fetchEventsFailedById,
    TResult Function(_EditEvent value)? editEvent,
    TResult Function(_EditEventSuccessful value)? editEventSuccessful,
    TResult Function(_EditEventFailed value)? editEventFailed,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_DeleteEventSuccessful value)? deleteEventSuccessful,
    TResult Function(_DeleteEventFailed value)? deleteEventFailed,
    TResult Function(_FetchEventsByClass value)? fetchEventsByClass,
    TResult Function(_FetchEventsByClassSuccessful value)?
        fetchEventsByClassSuccessful,
    TResult Function(_FetchEventsByClassFailed value)? fetchEventsByClassFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (errorMessage != null) {
      return errorMessage(this);
    }
    return orElse();
  }
}

abstract class _ErrorMessage implements EventsEvent {
  const factory _ErrorMessage(final String? message) = _$ErrorMessageImpl;

  String? get message;

  /// Create a copy of EventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorMessageImplCopyWith<_$ErrorMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventsState {
  EventModel? get eventModel => throw _privateConstructorUsedError;
  FormzSubmissionStatus get uploadEventStatus =>
      throw _privateConstructorUsedError;
  EventTitleFormz get eventTitle => throw _privateConstructorUsedError;
  EventDetailsFormz get eventDetails => throw _privateConstructorUsedError;
  String? get eventRecipients => throw _privateConstructorUsedError;
  String? get eventDate => throw _privateConstructorUsedError;
  List<String>? get associatedEvents =>
      throw _privateConstructorUsedError; // List<String>? eventClasses,
  File? get eventImage =>
      throw _privateConstructorUsedError; ////////////////////////////////////////////////////////////////////////////////
  ///FETCH EVENTS & FETCH EVENTS BY CLASS
////////////////////////////////////////////////////////////////////////////////
  FormzSubmissionStatus get fetchEventStatus =>
      throw _privateConstructorUsedError;
  FormzSubmissionStatus get fetchEventByClass =>
      throw _privateConstructorUsedError;
  EventResponse? get eventResponse => throw _privateConstructorUsedError;
  List<UpcomingEvent>? get upComingEvent => throw _privateConstructorUsedError;
  List<PreviousEvent>? get previousEvent => throw _privateConstructorUsedError;
  EventData? get eventData =>
      throw _privateConstructorUsedError; ////////////////////////////////////////////////////////////////////////////////
  ///FETCH EVENTS BY ID
////////////////////////////////////////////////////////////////////////////////
  FormzSubmissionStatus get fetchEventByIdStatus =>
      throw _privateConstructorUsedError;
  EventIdResponse? get eventIdResponse => throw _privateConstructorUsedError;
  EventIdData? get eventIdData => throw _privateConstructorUsedError;
  List<EventClass>? get eventClass =>
      throw _privateConstructorUsedError; ////////////////////////////////////////////////////////////////////////////////
  ///DELETE EVENTS
////////////////////////////////////////////////////////////////////////////////
  FormzSubmissionStatus get deleteEventStatus =>
      throw _privateConstructorUsedError; ////////////////////////////////////////////////////////////////////////////////
  ///EDIT EVENTS
////////////////////////////////////////////////////////////////////////////////
  FormzSubmissionStatus get editEventStatus =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of EventsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventsStateCopyWith<EventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsStateCopyWith<$Res> {
  factory $EventsStateCopyWith(
          EventsState value, $Res Function(EventsState) then) =
      _$EventsStateCopyWithImpl<$Res, EventsState>;
  @useResult
  $Res call(
      {EventModel? eventModel,
      FormzSubmissionStatus uploadEventStatus,
      EventTitleFormz eventTitle,
      EventDetailsFormz eventDetails,
      String? eventRecipients,
      String? eventDate,
      List<String>? associatedEvents,
      File? eventImage,
      FormzSubmissionStatus fetchEventStatus,
      FormzSubmissionStatus fetchEventByClass,
      EventResponse? eventResponse,
      List<UpcomingEvent>? upComingEvent,
      List<PreviousEvent>? previousEvent,
      EventData? eventData,
      FormzSubmissionStatus fetchEventByIdStatus,
      EventIdResponse? eventIdResponse,
      EventIdData? eventIdData,
      List<EventClass>? eventClass,
      FormzSubmissionStatus deleteEventStatus,
      FormzSubmissionStatus editEventStatus,
      String? errorMessage});
}

/// @nodoc
class _$EventsStateCopyWithImpl<$Res, $Val extends EventsState>
    implements $EventsStateCopyWith<$Res> {
  _$EventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventModel = freezed,
    Object? uploadEventStatus = null,
    Object? eventTitle = null,
    Object? eventDetails = null,
    Object? eventRecipients = freezed,
    Object? eventDate = freezed,
    Object? associatedEvents = freezed,
    Object? eventImage = freezed,
    Object? fetchEventStatus = null,
    Object? fetchEventByClass = null,
    Object? eventResponse = freezed,
    Object? upComingEvent = freezed,
    Object? previousEvent = freezed,
    Object? eventData = freezed,
    Object? fetchEventByIdStatus = null,
    Object? eventIdResponse = freezed,
    Object? eventIdData = freezed,
    Object? eventClass = freezed,
    Object? deleteEventStatus = null,
    Object? editEventStatus = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      eventModel: freezed == eventModel
          ? _value.eventModel
          : eventModel // ignore: cast_nullable_to_non_nullable
              as EventModel?,
      uploadEventStatus: null == uploadEventStatus
          ? _value.uploadEventStatus
          : uploadEventStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      eventTitle: null == eventTitle
          ? _value.eventTitle
          : eventTitle // ignore: cast_nullable_to_non_nullable
              as EventTitleFormz,
      eventDetails: null == eventDetails
          ? _value.eventDetails
          : eventDetails // ignore: cast_nullable_to_non_nullable
              as EventDetailsFormz,
      eventRecipients: freezed == eventRecipients
          ? _value.eventRecipients
          : eventRecipients // ignore: cast_nullable_to_non_nullable
              as String?,
      eventDate: freezed == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as String?,
      associatedEvents: freezed == associatedEvents
          ? _value.associatedEvents
          : associatedEvents // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      eventImage: freezed == eventImage
          ? _value.eventImage
          : eventImage // ignore: cast_nullable_to_non_nullable
              as File?,
      fetchEventStatus: null == fetchEventStatus
          ? _value.fetchEventStatus
          : fetchEventStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchEventByClass: null == fetchEventByClass
          ? _value.fetchEventByClass
          : fetchEventByClass // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      eventResponse: freezed == eventResponse
          ? _value.eventResponse
          : eventResponse // ignore: cast_nullable_to_non_nullable
              as EventResponse?,
      upComingEvent: freezed == upComingEvent
          ? _value.upComingEvent
          : upComingEvent // ignore: cast_nullable_to_non_nullable
              as List<UpcomingEvent>?,
      previousEvent: freezed == previousEvent
          ? _value.previousEvent
          : previousEvent // ignore: cast_nullable_to_non_nullable
              as List<PreviousEvent>?,
      eventData: freezed == eventData
          ? _value.eventData
          : eventData // ignore: cast_nullable_to_non_nullable
              as EventData?,
      fetchEventByIdStatus: null == fetchEventByIdStatus
          ? _value.fetchEventByIdStatus
          : fetchEventByIdStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      eventIdResponse: freezed == eventIdResponse
          ? _value.eventIdResponse
          : eventIdResponse // ignore: cast_nullable_to_non_nullable
              as EventIdResponse?,
      eventIdData: freezed == eventIdData
          ? _value.eventIdData
          : eventIdData // ignore: cast_nullable_to_non_nullable
              as EventIdData?,
      eventClass: freezed == eventClass
          ? _value.eventClass
          : eventClass // ignore: cast_nullable_to_non_nullable
              as List<EventClass>?,
      deleteEventStatus: null == deleteEventStatus
          ? _value.deleteEventStatus
          : deleteEventStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      editEventStatus: null == editEventStatus
          ? _value.editEventStatus
          : editEventStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventsStateImplCopyWith<$Res>
    implements $EventsStateCopyWith<$Res> {
  factory _$$EventsStateImplCopyWith(
          _$EventsStateImpl value, $Res Function(_$EventsStateImpl) then) =
      __$$EventsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EventModel? eventModel,
      FormzSubmissionStatus uploadEventStatus,
      EventTitleFormz eventTitle,
      EventDetailsFormz eventDetails,
      String? eventRecipients,
      String? eventDate,
      List<String>? associatedEvents,
      File? eventImage,
      FormzSubmissionStatus fetchEventStatus,
      FormzSubmissionStatus fetchEventByClass,
      EventResponse? eventResponse,
      List<UpcomingEvent>? upComingEvent,
      List<PreviousEvent>? previousEvent,
      EventData? eventData,
      FormzSubmissionStatus fetchEventByIdStatus,
      EventIdResponse? eventIdResponse,
      EventIdData? eventIdData,
      List<EventClass>? eventClass,
      FormzSubmissionStatus deleteEventStatus,
      FormzSubmissionStatus editEventStatus,
      String? errorMessage});
}

/// @nodoc
class __$$EventsStateImplCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$EventsStateImpl>
    implements _$$EventsStateImplCopyWith<$Res> {
  __$$EventsStateImplCopyWithImpl(
      _$EventsStateImpl _value, $Res Function(_$EventsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventModel = freezed,
    Object? uploadEventStatus = null,
    Object? eventTitle = null,
    Object? eventDetails = null,
    Object? eventRecipients = freezed,
    Object? eventDate = freezed,
    Object? associatedEvents = freezed,
    Object? eventImage = freezed,
    Object? fetchEventStatus = null,
    Object? fetchEventByClass = null,
    Object? eventResponse = freezed,
    Object? upComingEvent = freezed,
    Object? previousEvent = freezed,
    Object? eventData = freezed,
    Object? fetchEventByIdStatus = null,
    Object? eventIdResponse = freezed,
    Object? eventIdData = freezed,
    Object? eventClass = freezed,
    Object? deleteEventStatus = null,
    Object? editEventStatus = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$EventsStateImpl(
      eventModel: freezed == eventModel
          ? _value.eventModel
          : eventModel // ignore: cast_nullable_to_non_nullable
              as EventModel?,
      uploadEventStatus: null == uploadEventStatus
          ? _value.uploadEventStatus
          : uploadEventStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      eventTitle: null == eventTitle
          ? _value.eventTitle
          : eventTitle // ignore: cast_nullable_to_non_nullable
              as EventTitleFormz,
      eventDetails: null == eventDetails
          ? _value.eventDetails
          : eventDetails // ignore: cast_nullable_to_non_nullable
              as EventDetailsFormz,
      eventRecipients: freezed == eventRecipients
          ? _value.eventRecipients
          : eventRecipients // ignore: cast_nullable_to_non_nullable
              as String?,
      eventDate: freezed == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as String?,
      associatedEvents: freezed == associatedEvents
          ? _value._associatedEvents
          : associatedEvents // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      eventImage: freezed == eventImage
          ? _value.eventImage
          : eventImage // ignore: cast_nullable_to_non_nullable
              as File?,
      fetchEventStatus: null == fetchEventStatus
          ? _value.fetchEventStatus
          : fetchEventStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchEventByClass: null == fetchEventByClass
          ? _value.fetchEventByClass
          : fetchEventByClass // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      eventResponse: freezed == eventResponse
          ? _value.eventResponse
          : eventResponse // ignore: cast_nullable_to_non_nullable
              as EventResponse?,
      upComingEvent: freezed == upComingEvent
          ? _value._upComingEvent
          : upComingEvent // ignore: cast_nullable_to_non_nullable
              as List<UpcomingEvent>?,
      previousEvent: freezed == previousEvent
          ? _value._previousEvent
          : previousEvent // ignore: cast_nullable_to_non_nullable
              as List<PreviousEvent>?,
      eventData: freezed == eventData
          ? _value.eventData
          : eventData // ignore: cast_nullable_to_non_nullable
              as EventData?,
      fetchEventByIdStatus: null == fetchEventByIdStatus
          ? _value.fetchEventByIdStatus
          : fetchEventByIdStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      eventIdResponse: freezed == eventIdResponse
          ? _value.eventIdResponse
          : eventIdResponse // ignore: cast_nullable_to_non_nullable
              as EventIdResponse?,
      eventIdData: freezed == eventIdData
          ? _value.eventIdData
          : eventIdData // ignore: cast_nullable_to_non_nullable
              as EventIdData?,
      eventClass: freezed == eventClass
          ? _value._eventClass
          : eventClass // ignore: cast_nullable_to_non_nullable
              as List<EventClass>?,
      deleteEventStatus: null == deleteEventStatus
          ? _value.deleteEventStatus
          : deleteEventStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      editEventStatus: null == editEventStatus
          ? _value.editEventStatus
          : editEventStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EventsStateImpl extends _EventsState {
  const _$EventsStateImpl(
      {this.eventModel,
      this.uploadEventStatus = FormzSubmissionStatus.initial,
      this.eventTitle = const EventTitleFormz.pure(),
      this.eventDetails = const EventDetailsFormz.pure(),
      this.eventRecipients,
      this.eventDate,
      final List<String>? associatedEvents,
      this.eventImage,
      this.fetchEventStatus = FormzSubmissionStatus.initial,
      this.fetchEventByClass = FormzSubmissionStatus.initial,
      this.eventResponse,
      final List<UpcomingEvent>? upComingEvent,
      final List<PreviousEvent>? previousEvent,
      this.eventData,
      this.fetchEventByIdStatus = FormzSubmissionStatus.initial,
      this.eventIdResponse,
      this.eventIdData,
      final List<EventClass>? eventClass,
      this.deleteEventStatus = FormzSubmissionStatus.initial,
      this.editEventStatus = FormzSubmissionStatus.initial,
      this.errorMessage})
      : _associatedEvents = associatedEvents,
        _upComingEvent = upComingEvent,
        _previousEvent = previousEvent,
        _eventClass = eventClass,
        super._();

  @override
  final EventModel? eventModel;
  @override
  @JsonKey()
  final FormzSubmissionStatus uploadEventStatus;
  @override
  @JsonKey()
  final EventTitleFormz eventTitle;
  @override
  @JsonKey()
  final EventDetailsFormz eventDetails;
  @override
  final String? eventRecipients;
  @override
  final String? eventDate;
  final List<String>? _associatedEvents;
  @override
  List<String>? get associatedEvents {
    final value = _associatedEvents;
    if (value == null) return null;
    if (_associatedEvents is EqualUnmodifiableListView)
      return _associatedEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// List<String>? eventClasses,
  @override
  final File? eventImage;
////////////////////////////////////////////////////////////////////////////////
  ///FETCH EVENTS & FETCH EVENTS BY CLASS
////////////////////////////////////////////////////////////////////////////////
  @override
  @JsonKey()
  final FormzSubmissionStatus fetchEventStatus;
  @override
  @JsonKey()
  final FormzSubmissionStatus fetchEventByClass;
  @override
  final EventResponse? eventResponse;
  final List<UpcomingEvent>? _upComingEvent;
  @override
  List<UpcomingEvent>? get upComingEvent {
    final value = _upComingEvent;
    if (value == null) return null;
    if (_upComingEvent is EqualUnmodifiableListView) return _upComingEvent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PreviousEvent>? _previousEvent;
  @override
  List<PreviousEvent>? get previousEvent {
    final value = _previousEvent;
    if (value == null) return null;
    if (_previousEvent is EqualUnmodifiableListView) return _previousEvent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final EventData? eventData;
////////////////////////////////////////////////////////////////////////////////
  ///FETCH EVENTS BY ID
////////////////////////////////////////////////////////////////////////////////
  @override
  @JsonKey()
  final FormzSubmissionStatus fetchEventByIdStatus;
  @override
  final EventIdResponse? eventIdResponse;
  @override
  final EventIdData? eventIdData;
  final List<EventClass>? _eventClass;
  @override
  List<EventClass>? get eventClass {
    final value = _eventClass;
    if (value == null) return null;
    if (_eventClass is EqualUnmodifiableListView) return _eventClass;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

////////////////////////////////////////////////////////////////////////////////
  ///DELETE EVENTS
////////////////////////////////////////////////////////////////////////////////
  @override
  @JsonKey()
  final FormzSubmissionStatus deleteEventStatus;
////////////////////////////////////////////////////////////////////////////////
  ///EDIT EVENTS
////////////////////////////////////////////////////////////////////////////////
  @override
  @JsonKey()
  final FormzSubmissionStatus editEventStatus;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'EventsState(eventModel: $eventModel, uploadEventStatus: $uploadEventStatus, eventTitle: $eventTitle, eventDetails: $eventDetails, eventRecipients: $eventRecipients, eventDate: $eventDate, associatedEvents: $associatedEvents, eventImage: $eventImage, fetchEventStatus: $fetchEventStatus, fetchEventByClass: $fetchEventByClass, eventResponse: $eventResponse, upComingEvent: $upComingEvent, previousEvent: $previousEvent, eventData: $eventData, fetchEventByIdStatus: $fetchEventByIdStatus, eventIdResponse: $eventIdResponse, eventIdData: $eventIdData, eventClass: $eventClass, deleteEventStatus: $deleteEventStatus, editEventStatus: $editEventStatus, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsStateImpl &&
            (identical(other.eventModel, eventModel) ||
                other.eventModel == eventModel) &&
            (identical(other.uploadEventStatus, uploadEventStatus) ||
                other.uploadEventStatus == uploadEventStatus) &&
            (identical(other.eventTitle, eventTitle) ||
                other.eventTitle == eventTitle) &&
            (identical(other.eventDetails, eventDetails) ||
                other.eventDetails == eventDetails) &&
            (identical(other.eventRecipients, eventRecipients) ||
                other.eventRecipients == eventRecipients) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate) &&
            const DeepCollectionEquality()
                .equals(other._associatedEvents, _associatedEvents) &&
            (identical(other.eventImage, eventImage) ||
                other.eventImage == eventImage) &&
            (identical(other.fetchEventStatus, fetchEventStatus) ||
                other.fetchEventStatus == fetchEventStatus) &&
            (identical(other.fetchEventByClass, fetchEventByClass) ||
                other.fetchEventByClass == fetchEventByClass) &&
            (identical(other.eventResponse, eventResponse) ||
                other.eventResponse == eventResponse) &&
            const DeepCollectionEquality()
                .equals(other._upComingEvent, _upComingEvent) &&
            const DeepCollectionEquality()
                .equals(other._previousEvent, _previousEvent) &&
            (identical(other.eventData, eventData) ||
                other.eventData == eventData) &&
            (identical(other.fetchEventByIdStatus, fetchEventByIdStatus) ||
                other.fetchEventByIdStatus == fetchEventByIdStatus) &&
            (identical(other.eventIdResponse, eventIdResponse) ||
                other.eventIdResponse == eventIdResponse) &&
            (identical(other.eventIdData, eventIdData) ||
                other.eventIdData == eventIdData) &&
            const DeepCollectionEquality()
                .equals(other._eventClass, _eventClass) &&
            (identical(other.deleteEventStatus, deleteEventStatus) ||
                other.deleteEventStatus == deleteEventStatus) &&
            (identical(other.editEventStatus, editEventStatus) ||
                other.editEventStatus == editEventStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        eventModel,
        uploadEventStatus,
        eventTitle,
        eventDetails,
        eventRecipients,
        eventDate,
        const DeepCollectionEquality().hash(_associatedEvents),
        eventImage,
        fetchEventStatus,
        fetchEventByClass,
        eventResponse,
        const DeepCollectionEquality().hash(_upComingEvent),
        const DeepCollectionEquality().hash(_previousEvent),
        eventData,
        fetchEventByIdStatus,
        eventIdResponse,
        eventIdData,
        const DeepCollectionEquality().hash(_eventClass),
        deleteEventStatus,
        editEventStatus,
        errorMessage
      ]);

  /// Create a copy of EventsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventsStateImplCopyWith<_$EventsStateImpl> get copyWith =>
      __$$EventsStateImplCopyWithImpl<_$EventsStateImpl>(this, _$identity);
}

abstract class _EventsState extends EventsState {
  const factory _EventsState(
      {final EventModel? eventModel,
      final FormzSubmissionStatus uploadEventStatus,
      final EventTitleFormz eventTitle,
      final EventDetailsFormz eventDetails,
      final String? eventRecipients,
      final String? eventDate,
      final List<String>? associatedEvents,
      final File? eventImage,
      final FormzSubmissionStatus fetchEventStatus,
      final FormzSubmissionStatus fetchEventByClass,
      final EventResponse? eventResponse,
      final List<UpcomingEvent>? upComingEvent,
      final List<PreviousEvent>? previousEvent,
      final EventData? eventData,
      final FormzSubmissionStatus fetchEventByIdStatus,
      final EventIdResponse? eventIdResponse,
      final EventIdData? eventIdData,
      final List<EventClass>? eventClass,
      final FormzSubmissionStatus deleteEventStatus,
      final FormzSubmissionStatus editEventStatus,
      final String? errorMessage}) = _$EventsStateImpl;
  const _EventsState._() : super._();

  @override
  EventModel? get eventModel;
  @override
  FormzSubmissionStatus get uploadEventStatus;
  @override
  EventTitleFormz get eventTitle;
  @override
  EventDetailsFormz get eventDetails;
  @override
  String? get eventRecipients;
  @override
  String? get eventDate;
  @override
  List<String>? get associatedEvents; // List<String>? eventClasses,
  @override
  File?
      get eventImage; ////////////////////////////////////////////////////////////////////////////////
  ///FETCH EVENTS & FETCH EVENTS BY CLASS
////////////////////////////////////////////////////////////////////////////////
  @override
  FormzSubmissionStatus get fetchEventStatus;
  @override
  FormzSubmissionStatus get fetchEventByClass;
  @override
  EventResponse? get eventResponse;
  @override
  List<UpcomingEvent>? get upComingEvent;
  @override
  List<PreviousEvent>? get previousEvent;
  @override
  EventData?
      get eventData; ////////////////////////////////////////////////////////////////////////////////
  ///FETCH EVENTS BY ID
////////////////////////////////////////////////////////////////////////////////
  @override
  FormzSubmissionStatus get fetchEventByIdStatus;
  @override
  EventIdResponse? get eventIdResponse;
  @override
  EventIdData? get eventIdData;
  @override
  List<EventClass>?
      get eventClass; ////////////////////////////////////////////////////////////////////////////////
  ///DELETE EVENTS
////////////////////////////////////////////////////////////////////////////////
  @override
  FormzSubmissionStatus
      get deleteEventStatus; ////////////////////////////////////////////////////////////////////////////////
  ///EDIT EVENTS
////////////////////////////////////////////////////////////////////////////////
  @override
  FormzSubmissionStatus get editEventStatus;
  @override
  String? get errorMessage;

  /// Create a copy of EventsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventsStateImplCopyWith<_$EventsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
