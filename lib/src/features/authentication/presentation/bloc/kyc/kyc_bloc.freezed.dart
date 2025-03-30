// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KycEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String nin) ninChanged,
    required TResult Function() submitKyc,
    required TResult Function() resetKyc,
    required TResult Function(KycResponse kycResponse) submitKycSuccess,
    required TResult Function(String error) submitKycFailure,
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String nin)? ninChanged,
    TResult? Function()? submitKyc,
    TResult? Function()? resetKyc,
    TResult? Function(KycResponse kycResponse)? submitKycSuccess,
    TResult? Function(String error)? submitKycFailure,
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String nin)? ninChanged,
    TResult Function()? submitKyc,
    TResult Function()? resetKyc,
    TResult Function(KycResponse kycResponse)? submitKycSuccess,
    TResult Function(String error)? submitKycFailure,
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_KycEvent value) $default, {
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_NinChanged value) ninChanged,
    required TResult Function(_SubmitKyc value) submitKyc,
    required TResult Function(_ResetKyc value) resetKyc,
    required TResult Function(_SubmitKycSuccess value) submitKycSuccess,
    required TResult Function(_SubmitKycFailure value) submitKycFailure,
    required TResult Function(_Init value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_KycEvent value)? $default, {
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_NinChanged value)? ninChanged,
    TResult? Function(_SubmitKyc value)? submitKyc,
    TResult? Function(_ResetKyc value)? resetKyc,
    TResult? Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult? Function(_SubmitKycFailure value)? submitKycFailure,
    TResult? Function(_Init value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_KycEvent value)? $default, {
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_NinChanged value)? ninChanged,
    TResult Function(_SubmitKyc value)? submitKyc,
    TResult Function(_ResetKyc value)? resetKyc,
    TResult Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult Function(_SubmitKycFailure value)? submitKycFailure,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycEventCopyWith<$Res> {
  factory $KycEventCopyWith(KycEvent value, $Res Function(KycEvent) then) =
      _$KycEventCopyWithImpl<$Res, KycEvent>;
}

/// @nodoc
class _$KycEventCopyWithImpl<$Res, $Val extends KycEvent>
    implements $KycEventCopyWith<$Res> {
  _$KycEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$KycEventImplCopyWith<$Res> {
  factory _$$KycEventImplCopyWith(
          _$KycEventImpl value, $Res Function(_$KycEventImpl) then) =
      __$$KycEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KycEventImplCopyWithImpl<$Res>
    extends _$KycEventCopyWithImpl<$Res, _$KycEventImpl>
    implements _$$KycEventImplCopyWith<$Res> {
  __$$KycEventImplCopyWithImpl(
      _$KycEventImpl _value, $Res Function(_$KycEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$KycEventImpl implements _KycEvent {
  const _$KycEventImpl();

  @override
  String toString() {
    return 'KycEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$KycEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String nin) ninChanged,
    required TResult Function() submitKyc,
    required TResult Function() resetKyc,
    required TResult Function(KycResponse kycResponse) submitKycSuccess,
    required TResult Function(String error) submitKycFailure,
    required TResult Function() init,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String nin)? ninChanged,
    TResult? Function()? submitKyc,
    TResult? Function()? resetKyc,
    TResult? Function(KycResponse kycResponse)? submitKycSuccess,
    TResult? Function(String error)? submitKycFailure,
    TResult? Function()? init,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String nin)? ninChanged,
    TResult Function()? submitKyc,
    TResult Function()? resetKyc,
    TResult Function(KycResponse kycResponse)? submitKycSuccess,
    TResult Function(String error)? submitKycFailure,
    TResult Function()? init,
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
    TResult Function(_KycEvent value) $default, {
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_NinChanged value) ninChanged,
    required TResult Function(_SubmitKyc value) submitKyc,
    required TResult Function(_ResetKyc value) resetKyc,
    required TResult Function(_SubmitKycSuccess value) submitKycSuccess,
    required TResult Function(_SubmitKycFailure value) submitKycFailure,
    required TResult Function(_Init value) init,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_KycEvent value)? $default, {
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_NinChanged value)? ninChanged,
    TResult? Function(_SubmitKyc value)? submitKyc,
    TResult? Function(_ResetKyc value)? resetKyc,
    TResult? Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult? Function(_SubmitKycFailure value)? submitKycFailure,
    TResult? Function(_Init value)? init,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_KycEvent value)? $default, {
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_NinChanged value)? ninChanged,
    TResult Function(_SubmitKyc value)? submitKyc,
    TResult Function(_ResetKyc value)? resetKyc,
    TResult Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult Function(_SubmitKycFailure value)? submitKycFailure,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _KycEvent implements KycEvent {
  const factory _KycEvent() = _$KycEventImpl;
}

/// @nodoc
abstract class _$$FirstNameChangedImplCopyWith<$Res> {
  factory _$$FirstNameChangedImplCopyWith(_$FirstNameChangedImpl value,
          $Res Function(_$FirstNameChangedImpl) then) =
      __$$FirstNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class __$$FirstNameChangedImplCopyWithImpl<$Res>
    extends _$KycEventCopyWithImpl<$Res, _$FirstNameChangedImpl>
    implements _$$FirstNameChangedImplCopyWith<$Res> {
  __$$FirstNameChangedImplCopyWithImpl(_$FirstNameChangedImpl _value,
      $Res Function(_$FirstNameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
  }) {
    return _then(_$FirstNameChangedImpl(
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstNameChangedImpl implements _FirstNameChanged {
  const _$FirstNameChangedImpl(this.firstName);

  @override
  final String firstName;

  @override
  String toString() {
    return 'KycEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstNameChangedImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      __$$FirstNameChangedImplCopyWithImpl<_$FirstNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String nin) ninChanged,
    required TResult Function() submitKyc,
    required TResult Function() resetKyc,
    required TResult Function(KycResponse kycResponse) submitKycSuccess,
    required TResult Function(String error) submitKycFailure,
    required TResult Function() init,
  }) {
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String nin)? ninChanged,
    TResult? Function()? submitKyc,
    TResult? Function()? resetKyc,
    TResult? Function(KycResponse kycResponse)? submitKycSuccess,
    TResult? Function(String error)? submitKycFailure,
    TResult? Function()? init,
  }) {
    return firstNameChanged?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String nin)? ninChanged,
    TResult Function()? submitKyc,
    TResult Function()? resetKyc,
    TResult Function(KycResponse kycResponse)? submitKycSuccess,
    TResult Function(String error)? submitKycFailure,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_KycEvent value) $default, {
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_NinChanged value) ninChanged,
    required TResult Function(_SubmitKyc value) submitKyc,
    required TResult Function(_ResetKyc value) resetKyc,
    required TResult Function(_SubmitKycSuccess value) submitKycSuccess,
    required TResult Function(_SubmitKycFailure value) submitKycFailure,
    required TResult Function(_Init value) init,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_KycEvent value)? $default, {
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_NinChanged value)? ninChanged,
    TResult? Function(_SubmitKyc value)? submitKyc,
    TResult? Function(_ResetKyc value)? resetKyc,
    TResult? Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult? Function(_SubmitKycFailure value)? submitKycFailure,
    TResult? Function(_Init value)? init,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_KycEvent value)? $default, {
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_NinChanged value)? ninChanged,
    TResult Function(_SubmitKyc value)? submitKyc,
    TResult Function(_ResetKyc value)? resetKyc,
    TResult Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult Function(_SubmitKycFailure value)? submitKycFailure,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChanged implements KycEvent {
  const factory _FirstNameChanged(final String firstName) =
      _$FirstNameChangedImpl;

  String get firstName;

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastNameChangedImplCopyWith<$Res> {
  factory _$$LastNameChangedImplCopyWith(_$LastNameChangedImpl value,
          $Res Function(_$LastNameChangedImpl) then) =
      __$$LastNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastName});
}

/// @nodoc
class __$$LastNameChangedImplCopyWithImpl<$Res>
    extends _$KycEventCopyWithImpl<$Res, _$LastNameChangedImpl>
    implements _$$LastNameChangedImplCopyWith<$Res> {
  __$$LastNameChangedImplCopyWithImpl(
      _$LastNameChangedImpl _value, $Res Function(_$LastNameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastName = null,
  }) {
    return _then(_$LastNameChangedImpl(
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastNameChangedImpl implements _LastNameChanged {
  const _$LastNameChangedImpl(this.lastName);

  @override
  final String lastName;

  @override
  String toString() {
    return 'KycEvent.lastNameChanged(lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastNameChangedImpl &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastName);

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastNameChangedImplCopyWith<_$LastNameChangedImpl> get copyWith =>
      __$$LastNameChangedImplCopyWithImpl<_$LastNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String nin) ninChanged,
    required TResult Function() submitKyc,
    required TResult Function() resetKyc,
    required TResult Function(KycResponse kycResponse) submitKycSuccess,
    required TResult Function(String error) submitKycFailure,
    required TResult Function() init,
  }) {
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String nin)? ninChanged,
    TResult? Function()? submitKyc,
    TResult? Function()? resetKyc,
    TResult? Function(KycResponse kycResponse)? submitKycSuccess,
    TResult? Function(String error)? submitKycFailure,
    TResult? Function()? init,
  }) {
    return lastNameChanged?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String nin)? ninChanged,
    TResult Function()? submitKyc,
    TResult Function()? resetKyc,
    TResult Function(KycResponse kycResponse)? submitKycSuccess,
    TResult Function(String error)? submitKycFailure,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_KycEvent value) $default, {
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_NinChanged value) ninChanged,
    required TResult Function(_SubmitKyc value) submitKyc,
    required TResult Function(_ResetKyc value) resetKyc,
    required TResult Function(_SubmitKycSuccess value) submitKycSuccess,
    required TResult Function(_SubmitKycFailure value) submitKycFailure,
    required TResult Function(_Init value) init,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_KycEvent value)? $default, {
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_NinChanged value)? ninChanged,
    TResult? Function(_SubmitKyc value)? submitKyc,
    TResult? Function(_ResetKyc value)? resetKyc,
    TResult? Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult? Function(_SubmitKycFailure value)? submitKycFailure,
    TResult? Function(_Init value)? init,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_KycEvent value)? $default, {
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_NinChanged value)? ninChanged,
    TResult Function(_SubmitKyc value)? submitKyc,
    TResult Function(_ResetKyc value)? resetKyc,
    TResult Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult Function(_SubmitKycFailure value)? submitKycFailure,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastNameChanged implements KycEvent {
  const factory _LastNameChanged(final String lastName) = _$LastNameChangedImpl;

  String get lastName;

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastNameChangedImplCopyWith<_$LastNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneNumberChangedImplCopyWith<$Res> {
  factory _$$PhoneNumberChangedImplCopyWith(_$PhoneNumberChangedImpl value,
          $Res Function(_$PhoneNumberChangedImpl) then) =
      __$$PhoneNumberChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneNumberChangedImplCopyWithImpl<$Res>
    extends _$KycEventCopyWithImpl<$Res, _$PhoneNumberChangedImpl>
    implements _$$PhoneNumberChangedImplCopyWith<$Res> {
  __$$PhoneNumberChangedImplCopyWithImpl(_$PhoneNumberChangedImpl _value,
      $Res Function(_$PhoneNumberChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PhoneNumberChangedImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChangedImpl implements _PhoneNumberChanged {
  const _$PhoneNumberChangedImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'KycEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberChangedImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberChangedImplCopyWith<_$PhoneNumberChangedImpl> get copyWith =>
      __$$PhoneNumberChangedImplCopyWithImpl<_$PhoneNumberChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String nin) ninChanged,
    required TResult Function() submitKyc,
    required TResult Function() resetKyc,
    required TResult Function(KycResponse kycResponse) submitKycSuccess,
    required TResult Function(String error) submitKycFailure,
    required TResult Function() init,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String nin)? ninChanged,
    TResult? Function()? submitKyc,
    TResult? Function()? resetKyc,
    TResult? Function(KycResponse kycResponse)? submitKycSuccess,
    TResult? Function(String error)? submitKycFailure,
    TResult? Function()? init,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String nin)? ninChanged,
    TResult Function()? submitKyc,
    TResult Function()? resetKyc,
    TResult Function(KycResponse kycResponse)? submitKycSuccess,
    TResult Function(String error)? submitKycFailure,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_KycEvent value) $default, {
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_NinChanged value) ninChanged,
    required TResult Function(_SubmitKyc value) submitKyc,
    required TResult Function(_ResetKyc value) resetKyc,
    required TResult Function(_SubmitKycSuccess value) submitKycSuccess,
    required TResult Function(_SubmitKycFailure value) submitKycFailure,
    required TResult Function(_Init value) init,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_KycEvent value)? $default, {
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_NinChanged value)? ninChanged,
    TResult? Function(_SubmitKyc value)? submitKyc,
    TResult? Function(_ResetKyc value)? resetKyc,
    TResult? Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult? Function(_SubmitKycFailure value)? submitKycFailure,
    TResult? Function(_Init value)? init,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_KycEvent value)? $default, {
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_NinChanged value)? ninChanged,
    TResult Function(_SubmitKyc value)? submitKyc,
    TResult Function(_ResetKyc value)? resetKyc,
    TResult Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult Function(_SubmitKycFailure value)? submitKycFailure,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements KycEvent {
  const factory _PhoneNumberChanged(final String phoneNumber) =
      _$PhoneNumberChangedImpl;

  String get phoneNumber;

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneNumberChangedImplCopyWith<_$PhoneNumberChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NinChangedImplCopyWith<$Res> {
  factory _$$NinChangedImplCopyWith(
          _$NinChangedImpl value, $Res Function(_$NinChangedImpl) then) =
      __$$NinChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nin});
}

/// @nodoc
class __$$NinChangedImplCopyWithImpl<$Res>
    extends _$KycEventCopyWithImpl<$Res, _$NinChangedImpl>
    implements _$$NinChangedImplCopyWith<$Res> {
  __$$NinChangedImplCopyWithImpl(
      _$NinChangedImpl _value, $Res Function(_$NinChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nin = null,
  }) {
    return _then(_$NinChangedImpl(
      null == nin
          ? _value.nin
          : nin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NinChangedImpl implements _NinChanged {
  const _$NinChangedImpl(this.nin);

  @override
  final String nin;

  @override
  String toString() {
    return 'KycEvent.ninChanged(nin: $nin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NinChangedImpl &&
            (identical(other.nin, nin) || other.nin == nin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nin);

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NinChangedImplCopyWith<_$NinChangedImpl> get copyWith =>
      __$$NinChangedImplCopyWithImpl<_$NinChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String nin) ninChanged,
    required TResult Function() submitKyc,
    required TResult Function() resetKyc,
    required TResult Function(KycResponse kycResponse) submitKycSuccess,
    required TResult Function(String error) submitKycFailure,
    required TResult Function() init,
  }) {
    return ninChanged(nin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String nin)? ninChanged,
    TResult? Function()? submitKyc,
    TResult? Function()? resetKyc,
    TResult? Function(KycResponse kycResponse)? submitKycSuccess,
    TResult? Function(String error)? submitKycFailure,
    TResult? Function()? init,
  }) {
    return ninChanged?.call(nin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String nin)? ninChanged,
    TResult Function()? submitKyc,
    TResult Function()? resetKyc,
    TResult Function(KycResponse kycResponse)? submitKycSuccess,
    TResult Function(String error)? submitKycFailure,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (ninChanged != null) {
      return ninChanged(nin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_KycEvent value) $default, {
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_NinChanged value) ninChanged,
    required TResult Function(_SubmitKyc value) submitKyc,
    required TResult Function(_ResetKyc value) resetKyc,
    required TResult Function(_SubmitKycSuccess value) submitKycSuccess,
    required TResult Function(_SubmitKycFailure value) submitKycFailure,
    required TResult Function(_Init value) init,
  }) {
    return ninChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_KycEvent value)? $default, {
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_NinChanged value)? ninChanged,
    TResult? Function(_SubmitKyc value)? submitKyc,
    TResult? Function(_ResetKyc value)? resetKyc,
    TResult? Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult? Function(_SubmitKycFailure value)? submitKycFailure,
    TResult? Function(_Init value)? init,
  }) {
    return ninChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_KycEvent value)? $default, {
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_NinChanged value)? ninChanged,
    TResult Function(_SubmitKyc value)? submitKyc,
    TResult Function(_ResetKyc value)? resetKyc,
    TResult Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult Function(_SubmitKycFailure value)? submitKycFailure,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (ninChanged != null) {
      return ninChanged(this);
    }
    return orElse();
  }
}

abstract class _NinChanged implements KycEvent {
  const factory _NinChanged(final String nin) = _$NinChangedImpl;

  String get nin;

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NinChangedImplCopyWith<_$NinChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitKycImplCopyWith<$Res> {
  factory _$$SubmitKycImplCopyWith(
          _$SubmitKycImpl value, $Res Function(_$SubmitKycImpl) then) =
      __$$SubmitKycImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitKycImplCopyWithImpl<$Res>
    extends _$KycEventCopyWithImpl<$Res, _$SubmitKycImpl>
    implements _$$SubmitKycImplCopyWith<$Res> {
  __$$SubmitKycImplCopyWithImpl(
      _$SubmitKycImpl _value, $Res Function(_$SubmitKycImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitKycImpl implements _SubmitKyc {
  const _$SubmitKycImpl();

  @override
  String toString() {
    return 'KycEvent.submitKyc()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitKycImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String nin) ninChanged,
    required TResult Function() submitKyc,
    required TResult Function() resetKyc,
    required TResult Function(KycResponse kycResponse) submitKycSuccess,
    required TResult Function(String error) submitKycFailure,
    required TResult Function() init,
  }) {
    return submitKyc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String nin)? ninChanged,
    TResult? Function()? submitKyc,
    TResult? Function()? resetKyc,
    TResult? Function(KycResponse kycResponse)? submitKycSuccess,
    TResult? Function(String error)? submitKycFailure,
    TResult? Function()? init,
  }) {
    return submitKyc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String nin)? ninChanged,
    TResult Function()? submitKyc,
    TResult Function()? resetKyc,
    TResult Function(KycResponse kycResponse)? submitKycSuccess,
    TResult Function(String error)? submitKycFailure,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (submitKyc != null) {
      return submitKyc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_KycEvent value) $default, {
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_NinChanged value) ninChanged,
    required TResult Function(_SubmitKyc value) submitKyc,
    required TResult Function(_ResetKyc value) resetKyc,
    required TResult Function(_SubmitKycSuccess value) submitKycSuccess,
    required TResult Function(_SubmitKycFailure value) submitKycFailure,
    required TResult Function(_Init value) init,
  }) {
    return submitKyc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_KycEvent value)? $default, {
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_NinChanged value)? ninChanged,
    TResult? Function(_SubmitKyc value)? submitKyc,
    TResult? Function(_ResetKyc value)? resetKyc,
    TResult? Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult? Function(_SubmitKycFailure value)? submitKycFailure,
    TResult? Function(_Init value)? init,
  }) {
    return submitKyc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_KycEvent value)? $default, {
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_NinChanged value)? ninChanged,
    TResult Function(_SubmitKyc value)? submitKyc,
    TResult Function(_ResetKyc value)? resetKyc,
    TResult Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult Function(_SubmitKycFailure value)? submitKycFailure,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (submitKyc != null) {
      return submitKyc(this);
    }
    return orElse();
  }
}

abstract class _SubmitKyc implements KycEvent {
  const factory _SubmitKyc() = _$SubmitKycImpl;
}

/// @nodoc
abstract class _$$ResetKycImplCopyWith<$Res> {
  factory _$$ResetKycImplCopyWith(
          _$ResetKycImpl value, $Res Function(_$ResetKycImpl) then) =
      __$$ResetKycImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetKycImplCopyWithImpl<$Res>
    extends _$KycEventCopyWithImpl<$Res, _$ResetKycImpl>
    implements _$$ResetKycImplCopyWith<$Res> {
  __$$ResetKycImplCopyWithImpl(
      _$ResetKycImpl _value, $Res Function(_$ResetKycImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetKycImpl implements _ResetKyc {
  const _$ResetKycImpl();

  @override
  String toString() {
    return 'KycEvent.resetKyc()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetKycImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String nin) ninChanged,
    required TResult Function() submitKyc,
    required TResult Function() resetKyc,
    required TResult Function(KycResponse kycResponse) submitKycSuccess,
    required TResult Function(String error) submitKycFailure,
    required TResult Function() init,
  }) {
    return resetKyc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String nin)? ninChanged,
    TResult? Function()? submitKyc,
    TResult? Function()? resetKyc,
    TResult? Function(KycResponse kycResponse)? submitKycSuccess,
    TResult? Function(String error)? submitKycFailure,
    TResult? Function()? init,
  }) {
    return resetKyc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String nin)? ninChanged,
    TResult Function()? submitKyc,
    TResult Function()? resetKyc,
    TResult Function(KycResponse kycResponse)? submitKycSuccess,
    TResult Function(String error)? submitKycFailure,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (resetKyc != null) {
      return resetKyc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_KycEvent value) $default, {
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_NinChanged value) ninChanged,
    required TResult Function(_SubmitKyc value) submitKyc,
    required TResult Function(_ResetKyc value) resetKyc,
    required TResult Function(_SubmitKycSuccess value) submitKycSuccess,
    required TResult Function(_SubmitKycFailure value) submitKycFailure,
    required TResult Function(_Init value) init,
  }) {
    return resetKyc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_KycEvent value)? $default, {
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_NinChanged value)? ninChanged,
    TResult? Function(_SubmitKyc value)? submitKyc,
    TResult? Function(_ResetKyc value)? resetKyc,
    TResult? Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult? Function(_SubmitKycFailure value)? submitKycFailure,
    TResult? Function(_Init value)? init,
  }) {
    return resetKyc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_KycEvent value)? $default, {
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_NinChanged value)? ninChanged,
    TResult Function(_SubmitKyc value)? submitKyc,
    TResult Function(_ResetKyc value)? resetKyc,
    TResult Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult Function(_SubmitKycFailure value)? submitKycFailure,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (resetKyc != null) {
      return resetKyc(this);
    }
    return orElse();
  }
}

abstract class _ResetKyc implements KycEvent {
  const factory _ResetKyc() = _$ResetKycImpl;
}

/// @nodoc
abstract class _$$SubmitKycSuccessImplCopyWith<$Res> {
  factory _$$SubmitKycSuccessImplCopyWith(_$SubmitKycSuccessImpl value,
          $Res Function(_$SubmitKycSuccessImpl) then) =
      __$$SubmitKycSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KycResponse kycResponse});
}

/// @nodoc
class __$$SubmitKycSuccessImplCopyWithImpl<$Res>
    extends _$KycEventCopyWithImpl<$Res, _$SubmitKycSuccessImpl>
    implements _$$SubmitKycSuccessImplCopyWith<$Res> {
  __$$SubmitKycSuccessImplCopyWithImpl(_$SubmitKycSuccessImpl _value,
      $Res Function(_$SubmitKycSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kycResponse = null,
  }) {
    return _then(_$SubmitKycSuccessImpl(
      null == kycResponse
          ? _value.kycResponse
          : kycResponse // ignore: cast_nullable_to_non_nullable
              as KycResponse,
    ));
  }
}

/// @nodoc

class _$SubmitKycSuccessImpl implements _SubmitKycSuccess {
  const _$SubmitKycSuccessImpl(this.kycResponse);

  @override
  final KycResponse kycResponse;

  @override
  String toString() {
    return 'KycEvent.submitKycSuccess(kycResponse: $kycResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitKycSuccessImpl &&
            (identical(other.kycResponse, kycResponse) ||
                other.kycResponse == kycResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kycResponse);

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitKycSuccessImplCopyWith<_$SubmitKycSuccessImpl> get copyWith =>
      __$$SubmitKycSuccessImplCopyWithImpl<_$SubmitKycSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String nin) ninChanged,
    required TResult Function() submitKyc,
    required TResult Function() resetKyc,
    required TResult Function(KycResponse kycResponse) submitKycSuccess,
    required TResult Function(String error) submitKycFailure,
    required TResult Function() init,
  }) {
    return submitKycSuccess(kycResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String nin)? ninChanged,
    TResult? Function()? submitKyc,
    TResult? Function()? resetKyc,
    TResult? Function(KycResponse kycResponse)? submitKycSuccess,
    TResult? Function(String error)? submitKycFailure,
    TResult? Function()? init,
  }) {
    return submitKycSuccess?.call(kycResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String nin)? ninChanged,
    TResult Function()? submitKyc,
    TResult Function()? resetKyc,
    TResult Function(KycResponse kycResponse)? submitKycSuccess,
    TResult Function(String error)? submitKycFailure,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (submitKycSuccess != null) {
      return submitKycSuccess(kycResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_KycEvent value) $default, {
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_NinChanged value) ninChanged,
    required TResult Function(_SubmitKyc value) submitKyc,
    required TResult Function(_ResetKyc value) resetKyc,
    required TResult Function(_SubmitKycSuccess value) submitKycSuccess,
    required TResult Function(_SubmitKycFailure value) submitKycFailure,
    required TResult Function(_Init value) init,
  }) {
    return submitKycSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_KycEvent value)? $default, {
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_NinChanged value)? ninChanged,
    TResult? Function(_SubmitKyc value)? submitKyc,
    TResult? Function(_ResetKyc value)? resetKyc,
    TResult? Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult? Function(_SubmitKycFailure value)? submitKycFailure,
    TResult? Function(_Init value)? init,
  }) {
    return submitKycSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_KycEvent value)? $default, {
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_NinChanged value)? ninChanged,
    TResult Function(_SubmitKyc value)? submitKyc,
    TResult Function(_ResetKyc value)? resetKyc,
    TResult Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult Function(_SubmitKycFailure value)? submitKycFailure,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (submitKycSuccess != null) {
      return submitKycSuccess(this);
    }
    return orElse();
  }
}

abstract class _SubmitKycSuccess implements KycEvent {
  const factory _SubmitKycSuccess(final KycResponse kycResponse) =
      _$SubmitKycSuccessImpl;

  KycResponse get kycResponse;

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitKycSuccessImplCopyWith<_$SubmitKycSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitKycFailureImplCopyWith<$Res> {
  factory _$$SubmitKycFailureImplCopyWith(_$SubmitKycFailureImpl value,
          $Res Function(_$SubmitKycFailureImpl) then) =
      __$$SubmitKycFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SubmitKycFailureImplCopyWithImpl<$Res>
    extends _$KycEventCopyWithImpl<$Res, _$SubmitKycFailureImpl>
    implements _$$SubmitKycFailureImplCopyWith<$Res> {
  __$$SubmitKycFailureImplCopyWithImpl(_$SubmitKycFailureImpl _value,
      $Res Function(_$SubmitKycFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SubmitKycFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubmitKycFailureImpl implements _SubmitKycFailure {
  const _$SubmitKycFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'KycEvent.submitKycFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitKycFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitKycFailureImplCopyWith<_$SubmitKycFailureImpl> get copyWith =>
      __$$SubmitKycFailureImplCopyWithImpl<_$SubmitKycFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String nin) ninChanged,
    required TResult Function() submitKyc,
    required TResult Function() resetKyc,
    required TResult Function(KycResponse kycResponse) submitKycSuccess,
    required TResult Function(String error) submitKycFailure,
    required TResult Function() init,
  }) {
    return submitKycFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String nin)? ninChanged,
    TResult? Function()? submitKyc,
    TResult? Function()? resetKyc,
    TResult? Function(KycResponse kycResponse)? submitKycSuccess,
    TResult? Function(String error)? submitKycFailure,
    TResult? Function()? init,
  }) {
    return submitKycFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String nin)? ninChanged,
    TResult Function()? submitKyc,
    TResult Function()? resetKyc,
    TResult Function(KycResponse kycResponse)? submitKycSuccess,
    TResult Function(String error)? submitKycFailure,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (submitKycFailure != null) {
      return submitKycFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_KycEvent value) $default, {
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_NinChanged value) ninChanged,
    required TResult Function(_SubmitKyc value) submitKyc,
    required TResult Function(_ResetKyc value) resetKyc,
    required TResult Function(_SubmitKycSuccess value) submitKycSuccess,
    required TResult Function(_SubmitKycFailure value) submitKycFailure,
    required TResult Function(_Init value) init,
  }) {
    return submitKycFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_KycEvent value)? $default, {
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_NinChanged value)? ninChanged,
    TResult? Function(_SubmitKyc value)? submitKyc,
    TResult? Function(_ResetKyc value)? resetKyc,
    TResult? Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult? Function(_SubmitKycFailure value)? submitKycFailure,
    TResult? Function(_Init value)? init,
  }) {
    return submitKycFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_KycEvent value)? $default, {
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_NinChanged value)? ninChanged,
    TResult Function(_SubmitKyc value)? submitKyc,
    TResult Function(_ResetKyc value)? resetKyc,
    TResult Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult Function(_SubmitKycFailure value)? submitKycFailure,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (submitKycFailure != null) {
      return submitKycFailure(this);
    }
    return orElse();
  }
}

abstract class _SubmitKycFailure implements KycEvent {
  const factory _SubmitKycFailure(final String error) = _$SubmitKycFailureImpl;

  String get error;

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitKycFailureImplCopyWith<_$SubmitKycFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$KycEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'KycEvent.init()';
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
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String nin) ninChanged,
    required TResult Function() submitKyc,
    required TResult Function() resetKyc,
    required TResult Function(KycResponse kycResponse) submitKycSuccess,
    required TResult Function(String error) submitKycFailure,
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String nin)? ninChanged,
    TResult? Function()? submitKyc,
    TResult? Function()? resetKyc,
    TResult? Function(KycResponse kycResponse)? submitKycSuccess,
    TResult? Function(String error)? submitKycFailure,
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String nin)? ninChanged,
    TResult Function()? submitKyc,
    TResult Function()? resetKyc,
    TResult Function(KycResponse kycResponse)? submitKycSuccess,
    TResult Function(String error)? submitKycFailure,
    TResult Function()? init,
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
    TResult Function(_KycEvent value) $default, {
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_NinChanged value) ninChanged,
    required TResult Function(_SubmitKyc value) submitKyc,
    required TResult Function(_ResetKyc value) resetKyc,
    required TResult Function(_SubmitKycSuccess value) submitKycSuccess,
    required TResult Function(_SubmitKycFailure value) submitKycFailure,
    required TResult Function(_Init value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_KycEvent value)? $default, {
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_NinChanged value)? ninChanged,
    TResult? Function(_SubmitKyc value)? submitKyc,
    TResult? Function(_ResetKyc value)? resetKyc,
    TResult? Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult? Function(_SubmitKycFailure value)? submitKycFailure,
    TResult? Function(_Init value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_KycEvent value)? $default, {
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_NinChanged value)? ninChanged,
    TResult Function(_SubmitKyc value)? submitKyc,
    TResult Function(_ResetKyc value)? resetKyc,
    TResult Function(_SubmitKycSuccess value)? submitKycSuccess,
    TResult Function(_SubmitKycFailure value)? submitKycFailure,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements KycEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
mixin _$KycState {
  User? get user => throw _privateConstructorUsedError;
  FirstNameFormz get firstName => throw _privateConstructorUsedError;
  LastNameFormz get lastName => throw _privateConstructorUsedError;
  PhoneNumberFormz get phoneNumber => throw _privateConstructorUsedError;
  NinFormz get nin => throw _privateConstructorUsedError;
  FormzSubmissionStatus get kycStatus => throw _privateConstructorUsedError;
  KycResponse? get kycResponse => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of KycState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KycStateCopyWith<KycState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycStateCopyWith<$Res> {
  factory $KycStateCopyWith(KycState value, $Res Function(KycState) then) =
      _$KycStateCopyWithImpl<$Res, KycState>;
  @useResult
  $Res call(
      {User? user,
      FirstNameFormz firstName,
      LastNameFormz lastName,
      PhoneNumberFormz phoneNumber,
      NinFormz nin,
      FormzSubmissionStatus kycStatus,
      KycResponse? kycResponse,
      String? errorMessage});
}

/// @nodoc
class _$KycStateCopyWithImpl<$Res, $Val extends KycState>
    implements $KycStateCopyWith<$Res> {
  _$KycStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KycState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? nin = null,
    Object? kycStatus = null,
    Object? kycResponse = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstNameFormz,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastNameFormz,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberFormz,
      nin: null == nin
          ? _value.nin
          : nin // ignore: cast_nullable_to_non_nullable
              as NinFormz,
      kycStatus: null == kycStatus
          ? _value.kycStatus
          : kycStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      kycResponse: freezed == kycResponse
          ? _value.kycResponse
          : kycResponse // ignore: cast_nullable_to_non_nullable
              as KycResponse?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KycStateImplCopyWith<$Res>
    implements $KycStateCopyWith<$Res> {
  factory _$$KycStateImplCopyWith(
          _$KycStateImpl value, $Res Function(_$KycStateImpl) then) =
      __$$KycStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User? user,
      FirstNameFormz firstName,
      LastNameFormz lastName,
      PhoneNumberFormz phoneNumber,
      NinFormz nin,
      FormzSubmissionStatus kycStatus,
      KycResponse? kycResponse,
      String? errorMessage});
}

/// @nodoc
class __$$KycStateImplCopyWithImpl<$Res>
    extends _$KycStateCopyWithImpl<$Res, _$KycStateImpl>
    implements _$$KycStateImplCopyWith<$Res> {
  __$$KycStateImplCopyWithImpl(
      _$KycStateImpl _value, $Res Function(_$KycStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? nin = null,
    Object? kycStatus = null,
    Object? kycResponse = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$KycStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstNameFormz,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastNameFormz,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberFormz,
      nin: null == nin
          ? _value.nin
          : nin // ignore: cast_nullable_to_non_nullable
              as NinFormz,
      kycStatus: null == kycStatus
          ? _value.kycStatus
          : kycStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      kycResponse: freezed == kycResponse
          ? _value.kycResponse
          : kycResponse // ignore: cast_nullable_to_non_nullable
              as KycResponse?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$KycStateImpl extends _KycState {
  const _$KycStateImpl(
      {this.user,
      this.firstName = const FirstNameFormz.pure(),
      this.lastName = const LastNameFormz.pure(),
      this.phoneNumber = const PhoneNumberFormz.pure(),
      this.nin = const NinFormz.pure(),
      this.kycStatus = FormzSubmissionStatus.initial,
      this.kycResponse,
      this.errorMessage})
      : super._();

  @override
  final User? user;
  @override
  @JsonKey()
  final FirstNameFormz firstName;
  @override
  @JsonKey()
  final LastNameFormz lastName;
  @override
  @JsonKey()
  final PhoneNumberFormz phoneNumber;
  @override
  @JsonKey()
  final NinFormz nin;
  @override
  @JsonKey()
  final FormzSubmissionStatus kycStatus;
  @override
  final KycResponse? kycResponse;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'KycState(user: $user, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, nin: $nin, kycStatus: $kycStatus, kycResponse: $kycResponse, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.nin, nin) || other.nin == nin) &&
            (identical(other.kycStatus, kycStatus) ||
                other.kycStatus == kycStatus) &&
            (identical(other.kycResponse, kycResponse) ||
                other.kycResponse == kycResponse) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, firstName, lastName,
      phoneNumber, nin, kycStatus, kycResponse, errorMessage);

  /// Create a copy of KycState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KycStateImplCopyWith<_$KycStateImpl> get copyWith =>
      __$$KycStateImplCopyWithImpl<_$KycStateImpl>(this, _$identity);
}

abstract class _KycState extends KycState {
  const factory _KycState(
      {final User? user,
      final FirstNameFormz firstName,
      final LastNameFormz lastName,
      final PhoneNumberFormz phoneNumber,
      final NinFormz nin,
      final FormzSubmissionStatus kycStatus,
      final KycResponse? kycResponse,
      final String? errorMessage}) = _$KycStateImpl;
  const _KycState._() : super._();

  @override
  User? get user;
  @override
  FirstNameFormz get firstName;
  @override
  LastNameFormz get lastName;
  @override
  PhoneNumberFormz get phoneNumber;
  @override
  NinFormz get nin;
  @override
  FormzSubmissionStatus get kycStatus;
  @override
  KycResponse? get kycResponse;
  @override
  String? get errorMessage;

  /// Create a copy of KycState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycStateImplCopyWith<_$KycStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
