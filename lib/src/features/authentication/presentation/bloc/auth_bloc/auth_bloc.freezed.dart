// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthEventImplCopyWith<$Res> {
  factory _$$AuthEventImplCopyWith(
          _$AuthEventImpl value, $Res Function(_$AuthEventImpl) then) =
      __$$AuthEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventImpl>
    implements _$$AuthEventImplCopyWith<$Res> {
  __$$AuthEventImplCopyWithImpl(
      _$AuthEventImpl _value, $Res Function(_$AuthEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthEventImpl implements _AuthEvent {
  const _$AuthEventImpl();

  @override
  String toString() {
    return 'AuthEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
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
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AuthEvent implements AuthEvent {
  const factory _AuthEvent() = _$AuthEventImpl;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements AuthEvent {
  const factory _EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements _PasswordChanged {
  const _$PasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements AuthEvent {
  const factory _PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  factory _$$ConfirmPasswordChangedImplCopyWith(
          _$ConfirmPasswordChangedImpl value,
          $Res Function(_$ConfirmPasswordChangedImpl) then) =
      __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ConfirmPasswordChangedImpl>
    implements _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  __$$ConfirmPasswordChangedImplCopyWithImpl(
      _$ConfirmPasswordChangedImpl _value,
      $Res Function(_$ConfirmPasswordChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$ConfirmPasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChangedImpl implements _ConfirmPasswordChanged {
  const _$ConfirmPasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.onConfirmPasswordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => __$$ConfirmPasswordChangedImplCopyWithImpl<
          _$ConfirmPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return onConfirmPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return onConfirmPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (onConfirmPasswordChanged != null) {
      return onConfirmPasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return onConfirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return onConfirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (onConfirmPasswordChanged != null) {
      return onConfirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordChanged implements AuthEvent {
  const factory _ConfirmPasswordChanged(final String password) =
      _$ConfirmPasswordChangedImpl;

  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
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
    extends _$AuthEventCopyWithImpl<$Res, _$ErrorMessageImpl>
    implements _$$ErrorMessageImplCopyWith<$Res> {
  __$$ErrorMessageImplCopyWithImpl(
      _$ErrorMessageImpl _value, $Res Function(_$ErrorMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
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
    return 'AuthEvent.errorMessage(message: $message)';
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

  /// Create a copy of AuthEvent
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
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return errorMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return errorMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
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
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return errorMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return errorMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (errorMessage != null) {
      return errorMessage(this);
    }
    return orElse();
  }
}

abstract class _ErrorMessage implements AuthEvent {
  const factory _ErrorMessage(final String? message) = _$ErrorMessageImpl;

  String? get message;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorMessageImplCopyWith<_$ErrorMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetSignUpFormImplCopyWith<$Res> {
  factory _$$ResetSignUpFormImplCopyWith(_$ResetSignUpFormImpl value,
          $Res Function(_$ResetSignUpFormImpl) then) =
      __$$ResetSignUpFormImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetSignUpFormImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResetSignUpFormImpl>
    implements _$$ResetSignUpFormImplCopyWith<$Res> {
  __$$ResetSignUpFormImplCopyWithImpl(
      _$ResetSignUpFormImpl _value, $Res Function(_$ResetSignUpFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetSignUpFormImpl implements _ResetSignUpForm {
  const _$ResetSignUpFormImpl();

  @override
  String toString() {
    return 'AuthEvent.resetSignUpForm()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetSignUpFormImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return resetSignUpForm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return resetSignUpForm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (resetSignUpForm != null) {
      return resetSignUpForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return resetSignUpForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return resetSignUpForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (resetSignUpForm != null) {
      return resetSignUpForm(this);
    }
    return orElse();
  }
}

abstract class _ResetSignUpForm implements AuthEvent {
  const factory _ResetSignUpForm() = _$ResetSignUpFormImpl;
}

/// @nodoc
abstract class _$$AcceptTermsChangedImplCopyWith<$Res> {
  factory _$$AcceptTermsChangedImplCopyWith(_$AcceptTermsChangedImpl value,
          $Res Function(_$AcceptTermsChangedImpl) then) =
      __$$AcceptTermsChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic acceptTerms});
}

/// @nodoc
class __$$AcceptTermsChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AcceptTermsChangedImpl>
    implements _$$AcceptTermsChangedImplCopyWith<$Res> {
  __$$AcceptTermsChangedImplCopyWithImpl(_$AcceptTermsChangedImpl _value,
      $Res Function(_$AcceptTermsChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptTerms = freezed,
  }) {
    return _then(_$AcceptTermsChangedImpl(
      freezed == acceptTerms ? _value.acceptTerms! : acceptTerms,
    ));
  }
}

/// @nodoc

class _$AcceptTermsChangedImpl implements _AcceptTermsChanged {
  const _$AcceptTermsChangedImpl(this.acceptTerms);

  @override
  final dynamic acceptTerms;

  @override
  String toString() {
    return 'AuthEvent.acceptTermsChanged(acceptTerms: $acceptTerms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptTermsChangedImpl &&
            const DeepCollectionEquality()
                .equals(other.acceptTerms, acceptTerms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(acceptTerms));

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptTermsChangedImplCopyWith<_$AcceptTermsChangedImpl> get copyWith =>
      __$$AcceptTermsChangedImplCopyWithImpl<_$AcceptTermsChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return acceptTermsChanged(acceptTerms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return acceptTermsChanged?.call(acceptTerms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (acceptTermsChanged != null) {
      return acceptTermsChanged(acceptTerms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return acceptTermsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return acceptTermsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (acceptTermsChanged != null) {
      return acceptTermsChanged(this);
    }
    return orElse();
  }
}

abstract class _AcceptTermsChanged implements AuthEvent {
  const factory _AcceptTermsChanged(final dynamic acceptTerms) =
      _$AcceptTermsChangedImpl;

  dynamic get acceptTerms;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptTermsChangedImplCopyWith<_$AcceptTermsChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpImpl implements _SignUp {
  const _$SignUpImpl();

  @override
  String toString() {
    return 'AuthEvent.signUp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return signUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return signUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthEvent {
  const factory _SignUp() = _$SignUpImpl;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInImpl implements _SignIn {
  const _$SignInImpl();

  @override
  String toString() {
    return 'AuthEvent.signIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements AuthEvent {
  const factory _SignIn() = _$SignInImpl;
}

/// @nodoc
abstract class _$$SignUpSuccessfulImplCopyWith<$Res> {
  factory _$$SignUpSuccessfulImplCopyWith(_$SignUpSuccessfulImpl value,
          $Res Function(_$SignUpSuccessfulImpl) then) =
      __$$SignUpSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignupResponse signupResponse});
}

/// @nodoc
class __$$SignUpSuccessfulImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpSuccessfulImpl>
    implements _$$SignUpSuccessfulImplCopyWith<$Res> {
  __$$SignUpSuccessfulImplCopyWithImpl(_$SignUpSuccessfulImpl _value,
      $Res Function(_$SignUpSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signupResponse = null,
  }) {
    return _then(_$SignUpSuccessfulImpl(
      null == signupResponse
          ? _value.signupResponse
          : signupResponse // ignore: cast_nullable_to_non_nullable
              as SignupResponse,
    ));
  }
}

/// @nodoc

class _$SignUpSuccessfulImpl implements _SignUpSuccessful {
  const _$SignUpSuccessfulImpl(this.signupResponse);

  @override
  final SignupResponse signupResponse;

  @override
  String toString() {
    return 'AuthEvent.signUpSuccessful(signupResponse: $signupResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpSuccessfulImpl &&
            (identical(other.signupResponse, signupResponse) ||
                other.signupResponse == signupResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signupResponse);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpSuccessfulImplCopyWith<_$SignUpSuccessfulImpl> get copyWith =>
      __$$SignUpSuccessfulImplCopyWithImpl<_$SignUpSuccessfulImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return signUpSuccessful(signupResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return signUpSuccessful?.call(signupResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (signUpSuccessful != null) {
      return signUpSuccessful(signupResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return signUpSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return signUpSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (signUpSuccessful != null) {
      return signUpSuccessful(this);
    }
    return orElse();
  }
}

abstract class _SignUpSuccessful implements AuthEvent {
  const factory _SignUpSuccessful(final SignupResponse signupResponse) =
      _$SignUpSuccessfulImpl;

  SignupResponse get signupResponse;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpSuccessfulImplCopyWith<_$SignUpSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInSuccessfulImplCopyWith<$Res> {
  factory _$$SignInSuccessfulImplCopyWith(_$SignInSuccessfulImpl value,
          $Res Function(_$SignInSuccessfulImpl) then) =
      __$$SignInSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthData authData});
}

/// @nodoc
class __$$SignInSuccessfulImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInSuccessfulImpl>
    implements _$$SignInSuccessfulImplCopyWith<$Res> {
  __$$SignInSuccessfulImplCopyWithImpl(_$SignInSuccessfulImpl _value,
      $Res Function(_$SignInSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authData = null,
  }) {
    return _then(_$SignInSuccessfulImpl(
      null == authData
          ? _value.authData
          : authData // ignore: cast_nullable_to_non_nullable
              as AuthData,
    ));
  }
}

/// @nodoc

class _$SignInSuccessfulImpl implements _SignInSuccessful {
  const _$SignInSuccessfulImpl(this.authData);

  @override
  final AuthData authData;

  @override
  String toString() {
    return 'AuthEvent.signInSuccessful(authData: $authData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInSuccessfulImpl &&
            (identical(other.authData, authData) ||
                other.authData == authData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authData);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInSuccessfulImplCopyWith<_$SignInSuccessfulImpl> get copyWith =>
      __$$SignInSuccessfulImplCopyWithImpl<_$SignInSuccessfulImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return signInSuccessful(authData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return signInSuccessful?.call(authData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (signInSuccessful != null) {
      return signInSuccessful(authData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return signInSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return signInSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (signInSuccessful != null) {
      return signInSuccessful(this);
    }
    return orElse();
  }
}

abstract class _SignInSuccessful implements AuthEvent {
  const factory _SignInSuccessful(final AuthData authData) =
      _$SignInSuccessfulImpl;

  AuthData get authData;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInSuccessfulImplCopyWith<_$SignInSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInFailedImplCopyWith<$Res> {
  factory _$$SignInFailedImplCopyWith(
          _$SignInFailedImpl value, $Res Function(_$SignInFailedImpl) then) =
      __$$SignInFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SignInFailedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInFailedImpl>
    implements _$$SignInFailedImplCopyWith<$Res> {
  __$$SignInFailedImplCopyWithImpl(
      _$SignInFailedImpl _value, $Res Function(_$SignInFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SignInFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignInFailedImpl implements _SignInFailed {
  const _$SignInFailedImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthEvent.signInFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFailedImplCopyWith<_$SignInFailedImpl> get copyWith =>
      __$$SignInFailedImplCopyWithImpl<_$SignInFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return signInFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return signInFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (signInFailed != null) {
      return signInFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return signInFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return signInFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (signInFailed != null) {
      return signInFailed(this);
    }
    return orElse();
  }
}

abstract class _SignInFailed implements AuthEvent {
  const factory _SignInFailed([final String? message]) = _$SignInFailedImpl;

  String? get message;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInFailedImplCopyWith<_$SignInFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpFailedImplCopyWith<$Res> {
  factory _$$SignUpFailedImplCopyWith(
          _$SignUpFailedImpl value, $Res Function(_$SignUpFailedImpl) then) =
      __$$SignUpFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SignUpFailedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpFailedImpl>
    implements _$$SignUpFailedImplCopyWith<$Res> {
  __$$SignUpFailedImplCopyWithImpl(
      _$SignUpFailedImpl _value, $Res Function(_$SignUpFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SignUpFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignUpFailedImpl implements _SignUpFailed {
  const _$SignUpFailedImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthEvent.signUpFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpFailedImplCopyWith<_$SignUpFailedImpl> get copyWith =>
      __$$SignUpFailedImplCopyWithImpl<_$SignUpFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return signUpFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return signUpFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (signUpFailed != null) {
      return signUpFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return signUpFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return signUpFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (signUpFailed != null) {
      return signUpFailed(this);
    }
    return orElse();
  }
}

abstract class _SignUpFailed implements AuthEvent {
  const factory _SignUpFailed([final String? message]) = _$SignUpFailedImpl;

  String? get message;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpFailedImplCopyWith<_$SignUpFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpChangedImplCopyWith<$Res> {
  factory _$$OtpChangedImplCopyWith(
          _$OtpChangedImpl value, $Res Function(_$OtpChangedImpl) then) =
      __$$OtpChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$OtpChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OtpChangedImpl>
    implements _$$OtpChangedImplCopyWith<$Res> {
  __$$OtpChangedImplCopyWithImpl(
      _$OtpChangedImpl _value, $Res Function(_$OtpChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$OtpChangedImpl(
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpChangedImpl implements _OtpChanged {
  const _$OtpChangedImpl(this.otp);

  @override
  final String otp;

  @override
  String toString() {
    return 'AuthEvent.otpChanged(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpChangedImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpChangedImplCopyWith<_$OtpChangedImpl> get copyWith =>
      __$$OtpChangedImplCopyWithImpl<_$OtpChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return otpChanged(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return otpChanged?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return otpChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class _OtpChanged implements AuthEvent {
  const factory _OtpChanged(final String otp) = _$OtpChangedImpl;

  String get otp;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpChangedImplCopyWith<_$OtpChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpImplCopyWith<$Res> {
  factory _$$VerifyOtpImplCopyWith(
          _$VerifyOtpImpl value, $Res Function(_$VerifyOtpImpl) then) =
      __$$VerifyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? otp});
}

/// @nodoc
class __$$VerifyOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOtpImpl>
    implements _$$VerifyOtpImplCopyWith<$Res> {
  __$$VerifyOtpImplCopyWithImpl(
      _$VerifyOtpImpl _value, $Res Function(_$VerifyOtpImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_$VerifyOtpImpl(
      freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VerifyOtpImpl implements _VerifyOtp {
  const _$VerifyOtpImpl([this.otp]);

  @override
  final String? otp;

  @override
  String toString() {
    return 'AuthEvent.verifyOtp(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      __$$VerifyOtpImplCopyWithImpl<_$VerifyOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return verifyOtp(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return verifyOtp?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtp implements AuthEvent {
  const factory _VerifyOtp([final String? otp]) = _$VerifyOtpImpl;

  String? get otp;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpSuccessfulImplCopyWith<$Res> {
  factory _$$VerifyOtpSuccessfulImplCopyWith(_$VerifyOtpSuccessfulImpl value,
          $Res Function(_$VerifyOtpSuccessfulImpl) then) =
      __$$VerifyOtpSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyOtpSuccessfulImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOtpSuccessfulImpl>
    implements _$$VerifyOtpSuccessfulImplCopyWith<$Res> {
  __$$VerifyOtpSuccessfulImplCopyWithImpl(_$VerifyOtpSuccessfulImpl _value,
      $Res Function(_$VerifyOtpSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerifyOtpSuccessfulImpl implements _VerifyOtpSuccessful {
  const _$VerifyOtpSuccessfulImpl();

  @override
  String toString() {
    return 'AuthEvent.verifyOtpSuccessful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return verifyOtpSuccessful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return verifyOtpSuccessful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (verifyOtpSuccessful != null) {
      return verifyOtpSuccessful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return verifyOtpSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return verifyOtpSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (verifyOtpSuccessful != null) {
      return verifyOtpSuccessful(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtpSuccessful implements AuthEvent {
  const factory _VerifyOtpSuccessful() = _$VerifyOtpSuccessfulImpl;
}

/// @nodoc
abstract class _$$VerifyOtpFailedImplCopyWith<$Res> {
  factory _$$VerifyOtpFailedImplCopyWith(_$VerifyOtpFailedImpl value,
          $Res Function(_$VerifyOtpFailedImpl) then) =
      __$$VerifyOtpFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$VerifyOtpFailedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOtpFailedImpl>
    implements _$$VerifyOtpFailedImplCopyWith<$Res> {
  __$$VerifyOtpFailedImplCopyWithImpl(
      _$VerifyOtpFailedImpl _value, $Res Function(_$VerifyOtpFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$VerifyOtpFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VerifyOtpFailedImpl implements _VerifyOtpFailed {
  const _$VerifyOtpFailedImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthEvent.verifyOtpFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpFailedImplCopyWith<_$VerifyOtpFailedImpl> get copyWith =>
      __$$VerifyOtpFailedImplCopyWithImpl<_$VerifyOtpFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return verifyOtpFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return verifyOtpFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (verifyOtpFailed != null) {
      return verifyOtpFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return verifyOtpFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return verifyOtpFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (verifyOtpFailed != null) {
      return verifyOtpFailed(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtpFailed implements AuthEvent {
  const factory _VerifyOtpFailed([final String? message]) =
      _$VerifyOtpFailedImpl;

  String? get message;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpFailedImplCopyWith<_$VerifyOtpFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendOtpImplCopyWith<$Res> {
  factory _$$ResendOtpImplCopyWith(
          _$ResendOtpImpl value, $Res Function(_$ResendOtpImpl) then) =
      __$$ResendOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResendOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResendOtpImpl>
    implements _$$ResendOtpImplCopyWith<$Res> {
  __$$ResendOtpImplCopyWithImpl(
      _$ResendOtpImpl _value, $Res Function(_$ResendOtpImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResendOtpImpl implements _ResendOtp {
  const _$ResendOtpImpl();

  @override
  String toString() {
    return 'AuthEvent.resendOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResendOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return resendOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return resendOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return resendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return resendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(this);
    }
    return orElse();
  }
}

abstract class _ResendOtp implements AuthEvent {
  const factory _ResendOtp() = _$ResendOtpImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordImplCopyWith<$Res> {
  factory _$$ForgotPasswordImplCopyWith(_$ForgotPasswordImpl value,
          $Res Function(_$ForgotPasswordImpl) then) =
      __$$ForgotPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgotPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotPasswordImpl>
    implements _$$ForgotPasswordImplCopyWith<$Res> {
  __$$ForgotPasswordImplCopyWithImpl(
      _$ForgotPasswordImpl _value, $Res Function(_$ForgotPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ForgotPasswordImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordImpl implements _ForgotPassword {
  const _$ForgotPasswordImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.forgotPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      __$$ForgotPasswordImplCopyWithImpl<_$ForgotPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return forgotPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return forgotPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class _ForgotPassword implements AuthEvent {
  const factory _ForgotPassword(final String email) = _$ForgotPasswordImpl;

  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordSuccessfulImplCopyWith<$Res> {
  factory _$$ForgotPasswordSuccessfulImplCopyWith(
          _$ForgotPasswordSuccessfulImpl value,
          $Res Function(_$ForgotPasswordSuccessfulImpl) then) =
      __$$ForgotPasswordSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordSuccessfulImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotPasswordSuccessfulImpl>
    implements _$$ForgotPasswordSuccessfulImplCopyWith<$Res> {
  __$$ForgotPasswordSuccessfulImplCopyWithImpl(
      _$ForgotPasswordSuccessfulImpl _value,
      $Res Function(_$ForgotPasswordSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ForgotPasswordSuccessfulImpl implements _ForgotPasswordSuccessful {
  const _$ForgotPasswordSuccessfulImpl();

  @override
  String toString() {
    return 'AuthEvent.forgotPasswordSuccessful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return forgotPasswordSuccessful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return forgotPasswordSuccessful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (forgotPasswordSuccessful != null) {
      return forgotPasswordSuccessful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return forgotPasswordSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return forgotPasswordSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (forgotPasswordSuccessful != null) {
      return forgotPasswordSuccessful(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordSuccessful implements AuthEvent {
  const factory _ForgotPasswordSuccessful() = _$ForgotPasswordSuccessfulImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordFailedImplCopyWith<$Res> {
  factory _$$ForgotPasswordFailedImplCopyWith(_$ForgotPasswordFailedImpl value,
          $Res Function(_$ForgotPasswordFailedImpl) then) =
      __$$ForgotPasswordFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ForgotPasswordFailedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotPasswordFailedImpl>
    implements _$$ForgotPasswordFailedImplCopyWith<$Res> {
  __$$ForgotPasswordFailedImplCopyWithImpl(_$ForgotPasswordFailedImpl _value,
      $Res Function(_$ForgotPasswordFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ForgotPasswordFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordFailedImpl implements _ForgotPasswordFailed {
  const _$ForgotPasswordFailedImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthEvent.forgotPasswordFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordFailedImplCopyWith<_$ForgotPasswordFailedImpl>
      get copyWith =>
          __$$ForgotPasswordFailedImplCopyWithImpl<_$ForgotPasswordFailedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return forgotPasswordFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return forgotPasswordFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (forgotPasswordFailed != null) {
      return forgotPasswordFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return forgotPasswordFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return forgotPasswordFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (forgotPasswordFailed != null) {
      return forgotPasswordFailed(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordFailed implements AuthEvent {
  const factory _ForgotPasswordFailed([final String? message]) =
      _$ForgotPasswordFailedImpl;

  String? get message;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordFailedImplCopyWith<_$ForgotPasswordFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateNewPasswordImplCopyWith<$Res> {
  factory _$$CreateNewPasswordImplCopyWith(_$CreateNewPasswordImpl value,
          $Res Function(_$CreateNewPasswordImpl) then) =
      __$$CreateNewPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$CreateNewPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CreateNewPasswordImpl>
    implements _$$CreateNewPasswordImplCopyWith<$Res> {
  __$$CreateNewPasswordImplCopyWithImpl(_$CreateNewPasswordImpl _value,
      $Res Function(_$CreateNewPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$CreateNewPasswordImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateNewPasswordImpl implements _CreateNewPassword {
  const _$CreateNewPasswordImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.createNewPassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNewPasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNewPasswordImplCopyWith<_$CreateNewPasswordImpl> get copyWith =>
      __$$CreateNewPasswordImplCopyWithImpl<_$CreateNewPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return createNewPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return createNewPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (createNewPassword != null) {
      return createNewPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return createNewPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return createNewPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (createNewPassword != null) {
      return createNewPassword(this);
    }
    return orElse();
  }
}

abstract class _CreateNewPassword implements AuthEvent {
  const factory _CreateNewPassword(final String password) =
      _$CreateNewPasswordImpl;

  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateNewPasswordImplCopyWith<_$CreateNewPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateNewPasswordSuccessfulImplCopyWith<$Res> {
  factory _$$CreateNewPasswordSuccessfulImplCopyWith(
          _$CreateNewPasswordSuccessfulImpl value,
          $Res Function(_$CreateNewPasswordSuccessfulImpl) then) =
      __$$CreateNewPasswordSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$CreateNewPasswordSuccessfulImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CreateNewPasswordSuccessfulImpl>
    implements _$$CreateNewPasswordSuccessfulImplCopyWith<$Res> {
  __$$CreateNewPasswordSuccessfulImplCopyWithImpl(
      _$CreateNewPasswordSuccessfulImpl _value,
      $Res Function(_$CreateNewPasswordSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$CreateNewPasswordSuccessfulImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateNewPasswordSuccessfulImpl
    implements _CreateNewPasswordSuccessful {
  const _$CreateNewPasswordSuccessfulImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.createNewPasswordSuccessful(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNewPasswordSuccessfulImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNewPasswordSuccessfulImplCopyWith<_$CreateNewPasswordSuccessfulImpl>
      get copyWith => __$$CreateNewPasswordSuccessfulImplCopyWithImpl<
          _$CreateNewPasswordSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return createNewPasswordSuccessful(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return createNewPasswordSuccessful?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (createNewPasswordSuccessful != null) {
      return createNewPasswordSuccessful(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return createNewPasswordSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return createNewPasswordSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (createNewPasswordSuccessful != null) {
      return createNewPasswordSuccessful(this);
    }
    return orElse();
  }
}

abstract class _CreateNewPasswordSuccessful implements AuthEvent {
  const factory _CreateNewPasswordSuccessful(final String password) =
      _$CreateNewPasswordSuccessfulImpl;

  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateNewPasswordSuccessfulImplCopyWith<_$CreateNewPasswordSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTeachersPasswordImplCopyWith<$Res> {
  factory _$$ChangeTeachersPasswordImplCopyWith(
          _$ChangeTeachersPasswordImpl value,
          $Res Function(_$ChangeTeachersPasswordImpl) then) =
      __$$ChangeTeachersPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeTeachersPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChangeTeachersPasswordImpl>
    implements _$$ChangeTeachersPasswordImplCopyWith<$Res> {
  __$$ChangeTeachersPasswordImplCopyWithImpl(
      _$ChangeTeachersPasswordImpl _value,
      $Res Function(_$ChangeTeachersPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangeTeachersPasswordImpl implements _ChangeTeachersPassword {
  const _$ChangeTeachersPasswordImpl();

  @override
  String toString() {
    return 'AuthEvent.changeTeachersPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTeachersPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return changeTeachersPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return changeTeachersPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (changeTeachersPassword != null) {
      return changeTeachersPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return changeTeachersPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return changeTeachersPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (changeTeachersPassword != null) {
      return changeTeachersPassword(this);
    }
    return orElse();
  }
}

abstract class _ChangeTeachersPassword implements AuthEvent {
  const factory _ChangeTeachersPassword() = _$ChangeTeachersPasswordImpl;
}

/// @nodoc
abstract class _$$ChangeTeachersPasswordSuccessfulImplCopyWith<$Res> {
  factory _$$ChangeTeachersPasswordSuccessfulImplCopyWith(
          _$ChangeTeachersPasswordSuccessfulImpl value,
          $Res Function(_$ChangeTeachersPasswordSuccessfulImpl) then) =
      __$$ChangeTeachersPasswordSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignupResponse signUpResponse});
}

/// @nodoc
class __$$ChangeTeachersPasswordSuccessfulImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res,
        _$ChangeTeachersPasswordSuccessfulImpl>
    implements _$$ChangeTeachersPasswordSuccessfulImplCopyWith<$Res> {
  __$$ChangeTeachersPasswordSuccessfulImplCopyWithImpl(
      _$ChangeTeachersPasswordSuccessfulImpl _value,
      $Res Function(_$ChangeTeachersPasswordSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpResponse = null,
  }) {
    return _then(_$ChangeTeachersPasswordSuccessfulImpl(
      null == signUpResponse
          ? _value.signUpResponse
          : signUpResponse // ignore: cast_nullable_to_non_nullable
              as SignupResponse,
    ));
  }
}

/// @nodoc

class _$ChangeTeachersPasswordSuccessfulImpl
    implements _ChangeTeachersPasswordSuccessful {
  const _$ChangeTeachersPasswordSuccessfulImpl(this.signUpResponse);

  @override
  final SignupResponse signUpResponse;

  @override
  String toString() {
    return 'AuthEvent.changeTeachersPasswordSuccessful(signUpResponse: $signUpResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTeachersPasswordSuccessfulImpl &&
            (identical(other.signUpResponse, signUpResponse) ||
                other.signUpResponse == signUpResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signUpResponse);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTeachersPasswordSuccessfulImplCopyWith<
          _$ChangeTeachersPasswordSuccessfulImpl>
      get copyWith => __$$ChangeTeachersPasswordSuccessfulImplCopyWithImpl<
          _$ChangeTeachersPasswordSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return changeTeachersPasswordSuccessful(signUpResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return changeTeachersPasswordSuccessful?.call(signUpResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (changeTeachersPasswordSuccessful != null) {
      return changeTeachersPasswordSuccessful(signUpResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return changeTeachersPasswordSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return changeTeachersPasswordSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (changeTeachersPasswordSuccessful != null) {
      return changeTeachersPasswordSuccessful(this);
    }
    return orElse();
  }
}

abstract class _ChangeTeachersPasswordSuccessful implements AuthEvent {
  const factory _ChangeTeachersPasswordSuccessful(
          final SignupResponse signUpResponse) =
      _$ChangeTeachersPasswordSuccessfulImpl;

  SignupResponse get signUpResponse;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeTeachersPasswordSuccessfulImplCopyWith<
          _$ChangeTeachersPasswordSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTeachersPasswordFailedImplCopyWith<$Res> {
  factory _$$ChangeTeachersPasswordFailedImplCopyWith(
          _$ChangeTeachersPasswordFailedImpl value,
          $Res Function(_$ChangeTeachersPasswordFailedImpl) then) =
      __$$ChangeTeachersPasswordFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ChangeTeachersPasswordFailedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChangeTeachersPasswordFailedImpl>
    implements _$$ChangeTeachersPasswordFailedImplCopyWith<$Res> {
  __$$ChangeTeachersPasswordFailedImplCopyWithImpl(
      _$ChangeTeachersPasswordFailedImpl _value,
      $Res Function(_$ChangeTeachersPasswordFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ChangeTeachersPasswordFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeTeachersPasswordFailedImpl
    implements _ChangeTeachersPasswordFailed {
  const _$ChangeTeachersPasswordFailedImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthEvent.changeTeachersPasswordFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTeachersPasswordFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTeachersPasswordFailedImplCopyWith<
          _$ChangeTeachersPasswordFailedImpl>
      get copyWith => __$$ChangeTeachersPasswordFailedImplCopyWithImpl<
          _$ChangeTeachersPasswordFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return changeTeachersPasswordFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return changeTeachersPasswordFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (changeTeachersPasswordFailed != null) {
      return changeTeachersPasswordFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return changeTeachersPasswordFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return changeTeachersPasswordFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (changeTeachersPasswordFailed != null) {
      return changeTeachersPasswordFailed(this);
    }
    return orElse();
  }
}

abstract class _ChangeTeachersPasswordFailed implements AuthEvent {
  const factory _ChangeTeachersPasswordFailed(final String? message) =
      _$ChangeTeachersPasswordFailedImpl;

  String? get message;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeTeachersPasswordFailedImplCopyWith<
          _$ChangeTeachersPasswordFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'AuthEvent.init()';
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
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) onConfirmPasswordChanged,
    required TResult Function(String? message) errorMessage,
    required TResult Function() resetSignUpForm,
    required TResult Function(dynamic acceptTerms) acceptTermsChanged,
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function(SignupResponse signupResponse) signUpSuccessful,
    required TResult Function(AuthData authData) signInSuccessful,
    required TResult Function(String? message) signInFailed,
    required TResult Function(String? message) signUpFailed,
    required TResult Function(String otp) otpChanged,
    required TResult Function(String? otp) verifyOtp,
    required TResult Function() verifyOtpSuccessful,
    required TResult Function(String? message) verifyOtpFailed,
    required TResult Function() resendOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function() forgotPasswordSuccessful,
    required TResult Function(String? message) forgotPasswordFailed,
    required TResult Function(String password) createNewPassword,
    required TResult Function(String password) createNewPasswordSuccessful,
    required TResult Function() changeTeachersPassword,
    required TResult Function(SignupResponse signUpResponse)
        changeTeachersPasswordSuccessful,
    required TResult Function(String? message) changeTeachersPasswordFailed,
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? onConfirmPasswordChanged,
    TResult? Function(String? message)? errorMessage,
    TResult? Function()? resetSignUpForm,
    TResult? Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult? Function(AuthData authData)? signInSuccessful,
    TResult? Function(String? message)? signInFailed,
    TResult? Function(String? message)? signUpFailed,
    TResult? Function(String otp)? otpChanged,
    TResult? Function(String? otp)? verifyOtp,
    TResult? Function()? verifyOtpSuccessful,
    TResult? Function(String? message)? verifyOtpFailed,
    TResult? Function()? resendOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? forgotPasswordSuccessful,
    TResult? Function(String? message)? forgotPasswordFailed,
    TResult? Function(String password)? createNewPassword,
    TResult? Function(String password)? createNewPasswordSuccessful,
    TResult? Function()? changeTeachersPassword,
    TResult? Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult? Function(String? message)? changeTeachersPasswordFailed,
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? onConfirmPasswordChanged,
    TResult Function(String? message)? errorMessage,
    TResult Function()? resetSignUpForm,
    TResult Function(dynamic acceptTerms)? acceptTermsChanged,
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function(SignupResponse signupResponse)? signUpSuccessful,
    TResult Function(AuthData authData)? signInSuccessful,
    TResult Function(String? message)? signInFailed,
    TResult Function(String? message)? signUpFailed,
    TResult Function(String otp)? otpChanged,
    TResult Function(String? otp)? verifyOtp,
    TResult Function()? verifyOtpSuccessful,
    TResult Function(String? message)? verifyOtpFailed,
    TResult Function()? resendOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function()? forgotPasswordSuccessful,
    TResult Function(String? message)? forgotPasswordFailed,
    TResult Function(String password)? createNewPassword,
    TResult Function(String password)? createNewPasswordSuccessful,
    TResult Function()? changeTeachersPassword,
    TResult Function(SignupResponse signUpResponse)?
        changeTeachersPasswordSuccessful,
    TResult Function(String? message)? changeTeachersPasswordFailed,
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
    TResult Function(_AuthEvent value) $default, {
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        onConfirmPasswordChanged,
    required TResult Function(_ErrorMessage value) errorMessage,
    required TResult Function(_ResetSignUpForm value) resetSignUpForm,
    required TResult Function(_AcceptTermsChanged value) acceptTermsChanged,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUpSuccessful value) signUpSuccessful,
    required TResult Function(_SignInSuccessful value) signInSuccessful,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_SignUpFailed value) signUpFailed,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyOtpSuccessful value) verifyOtpSuccessful,
    required TResult Function(_VerifyOtpFailed value) verifyOtpFailed,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ForgotPasswordSuccessful value)
        forgotPasswordSuccessful,
    required TResult Function(_ForgotPasswordFailed value) forgotPasswordFailed,
    required TResult Function(_CreateNewPassword value) createNewPassword,
    required TResult Function(_CreateNewPasswordSuccessful value)
        createNewPasswordSuccessful,
    required TResult Function(_ChangeTeachersPassword value)
        changeTeachersPassword,
    required TResult Function(_ChangeTeachersPasswordSuccessful value)
        changeTeachersPasswordSuccessful,
    required TResult Function(_ChangeTeachersPasswordFailed value)
        changeTeachersPasswordFailed,
    required TResult Function(_Init value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthEvent value)? $default, {
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult? Function(_ErrorMessage value)? errorMessage,
    TResult? Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult? Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult? Function(_SignInSuccessful value)? signInSuccessful,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_SignUpFailed value)? signUpFailed,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult? Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ForgotPasswordSuccessful value)?
        forgotPasswordSuccessful,
    TResult? Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult? Function(_CreateNewPassword value)? createNewPassword,
    TResult? Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult? Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult? Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult? Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult? Function(_Init value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthEvent value)? $default, {
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_ErrorMessage value)? errorMessage,
    TResult Function(_ResetSignUpForm value)? resetSignUpForm,
    TResult Function(_AcceptTermsChanged value)? acceptTermsChanged,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUpSuccessful value)? signUpSuccessful,
    TResult Function(_SignInSuccessful value)? signInSuccessful,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_SignUpFailed value)? signUpFailed,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyOtpSuccessful value)? verifyOtpSuccessful,
    TResult Function(_VerifyOtpFailed value)? verifyOtpFailed,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ForgotPasswordSuccessful value)? forgotPasswordSuccessful,
    TResult Function(_ForgotPasswordFailed value)? forgotPasswordFailed,
    TResult Function(_CreateNewPassword value)? createNewPassword,
    TResult Function(_CreateNewPasswordSuccessful value)?
        createNewPasswordSuccessful,
    TResult Function(_ChangeTeachersPassword value)? changeTeachersPassword,
    TResult Function(_ChangeTeachersPasswordSuccessful value)?
        changeTeachersPasswordSuccessful,
    TResult Function(_ChangeTeachersPasswordFailed value)?
        changeTeachersPasswordFailed,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements AuthEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
mixin _$AuthState {
  User? get user => throw _privateConstructorUsedError;
  SchoolModel? get school => throw _privateConstructorUsedError;
  EmailFormz get email => throw _privateConstructorUsedError;
  PasswordFormz get password => throw _privateConstructorUsedError;
  PasswordConfirmFormz get passwordConfirm =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  dynamic get acceptTerms => throw _privateConstructorUsedError;
  SignupResponse? get signupResponse => throw _privateConstructorUsedError;
  FormzSubmissionStatus get signInStatus => throw _privateConstructorUsedError;
  FormzSubmissionStatus get signUpStatus => throw _privateConstructorUsedError;
  OTPFormz get otp => throw _privateConstructorUsedError;
  FormzSubmissionStatus get otpStatus => throw _privateConstructorUsedError;
  FormzSubmissionStatus get resendOtpStatus =>
      throw _privateConstructorUsedError;
  FormzSubmissionStatus get changeTeacherPasswordStatus =>
      throw _privateConstructorUsedError;
  ForgotPasswordFormz get forgotPassword => throw _privateConstructorUsedError;
  FormzSubmissionStatus get createNewPasswordStatus =>
      throw _privateConstructorUsedError;
  FormzSubmissionStatus get forgotPasswordStatus =>
      throw _privateConstructorUsedError;
  AuthData? get authdata => throw _privateConstructorUsedError;
  bool get initialized => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {User? user,
      SchoolModel? school,
      EmailFormz email,
      PasswordFormz password,
      PasswordConfirmFormz passwordConfirm,
      String? errorMessage,
      dynamic acceptTerms,
      SignupResponse? signupResponse,
      FormzSubmissionStatus signInStatus,
      FormzSubmissionStatus signUpStatus,
      OTPFormz otp,
      FormzSubmissionStatus otpStatus,
      FormzSubmissionStatus resendOtpStatus,
      FormzSubmissionStatus changeTeacherPasswordStatus,
      ForgotPasswordFormz forgotPassword,
      FormzSubmissionStatus createNewPasswordStatus,
      FormzSubmissionStatus forgotPasswordStatus,
      AuthData? authdata,
      bool initialized});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? school = freezed,
    Object? email = null,
    Object? password = null,
    Object? passwordConfirm = null,
    Object? errorMessage = freezed,
    Object? acceptTerms = freezed,
    Object? signupResponse = freezed,
    Object? signInStatus = null,
    Object? signUpStatus = null,
    Object? otp = null,
    Object? otpStatus = null,
    Object? resendOtpStatus = null,
    Object? changeTeacherPasswordStatus = null,
    Object? forgotPassword = null,
    Object? createNewPasswordStatus = null,
    Object? forgotPasswordStatus = null,
    Object? authdata = freezed,
    Object? initialized = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as SchoolModel?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailFormz,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as PasswordConfirmFormz,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptTerms: freezed == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as dynamic,
      signupResponse: freezed == signupResponse
          ? _value.signupResponse
          : signupResponse // ignore: cast_nullable_to_non_nullable
              as SignupResponse?,
      signInStatus: null == signInStatus
          ? _value.signInStatus
          : signInStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      signUpStatus: null == signUpStatus
          ? _value.signUpStatus
          : signUpStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OTPFormz,
      otpStatus: null == otpStatus
          ? _value.otpStatus
          : otpStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      resendOtpStatus: null == resendOtpStatus
          ? _value.resendOtpStatus
          : resendOtpStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      changeTeacherPasswordStatus: null == changeTeacherPasswordStatus
          ? _value.changeTeacherPasswordStatus
          : changeTeacherPasswordStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      forgotPassword: null == forgotPassword
          ? _value.forgotPassword
          : forgotPassword // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordFormz,
      createNewPasswordStatus: null == createNewPasswordStatus
          ? _value.createNewPasswordStatus
          : createNewPasswordStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      forgotPasswordStatus: null == forgotPasswordStatus
          ? _value.forgotPasswordStatus
          : forgotPasswordStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      authdata: freezed == authdata
          ? _value.authdata
          : authdata // ignore: cast_nullable_to_non_nullable
              as AuthData?,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User? user,
      SchoolModel? school,
      EmailFormz email,
      PasswordFormz password,
      PasswordConfirmFormz passwordConfirm,
      String? errorMessage,
      dynamic acceptTerms,
      SignupResponse? signupResponse,
      FormzSubmissionStatus signInStatus,
      FormzSubmissionStatus signUpStatus,
      OTPFormz otp,
      FormzSubmissionStatus otpStatus,
      FormzSubmissionStatus resendOtpStatus,
      FormzSubmissionStatus changeTeacherPasswordStatus,
      ForgotPasswordFormz forgotPassword,
      FormzSubmissionStatus createNewPasswordStatus,
      FormzSubmissionStatus forgotPasswordStatus,
      AuthData? authdata,
      bool initialized});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? school = freezed,
    Object? email = null,
    Object? password = null,
    Object? passwordConfirm = null,
    Object? errorMessage = freezed,
    Object? acceptTerms = freezed,
    Object? signupResponse = freezed,
    Object? signInStatus = null,
    Object? signUpStatus = null,
    Object? otp = null,
    Object? otpStatus = null,
    Object? resendOtpStatus = null,
    Object? changeTeacherPasswordStatus = null,
    Object? forgotPassword = null,
    Object? createNewPasswordStatus = null,
    Object? forgotPasswordStatus = null,
    Object? authdata = freezed,
    Object? initialized = null,
  }) {
    return _then(_$AuthStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as SchoolModel?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailFormz,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as PasswordConfirmFormz,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptTerms: freezed == acceptTerms ? _value.acceptTerms! : acceptTerms,
      signupResponse: freezed == signupResponse
          ? _value.signupResponse
          : signupResponse // ignore: cast_nullable_to_non_nullable
              as SignupResponse?,
      signInStatus: null == signInStatus
          ? _value.signInStatus
          : signInStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      signUpStatus: null == signUpStatus
          ? _value.signUpStatus
          : signUpStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OTPFormz,
      otpStatus: null == otpStatus
          ? _value.otpStatus
          : otpStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      resendOtpStatus: null == resendOtpStatus
          ? _value.resendOtpStatus
          : resendOtpStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      changeTeacherPasswordStatus: null == changeTeacherPasswordStatus
          ? _value.changeTeacherPasswordStatus
          : changeTeacherPasswordStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      forgotPassword: null == forgotPassword
          ? _value.forgotPassword
          : forgotPassword // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordFormz,
      createNewPasswordStatus: null == createNewPasswordStatus
          ? _value.createNewPasswordStatus
          : createNewPasswordStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      forgotPasswordStatus: null == forgotPasswordStatus
          ? _value.forgotPasswordStatus
          : forgotPasswordStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      authdata: freezed == authdata
          ? _value.authdata
          : authdata // ignore: cast_nullable_to_non_nullable
              as AuthData?,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl extends _AuthState {
  const _$AuthStateImpl(
      {this.user,
      this.school,
      this.email = const EmailFormz.pure(),
      this.password = const PasswordFormz.pure(),
      this.passwordConfirm = const PasswordConfirmFormz.pure(),
      this.errorMessage,
      this.acceptTerms = false,
      this.signupResponse,
      this.signInStatus = FormzSubmissionStatus.initial,
      this.signUpStatus = FormzSubmissionStatus.initial,
      this.otp = const OTPFormz.pure(),
      this.otpStatus = FormzSubmissionStatus.initial,
      this.resendOtpStatus = FormzSubmissionStatus.initial,
      this.changeTeacherPasswordStatus = FormzSubmissionStatus.initial,
      this.forgotPassword = const ForgotPasswordFormz.pure(),
      this.createNewPasswordStatus = FormzSubmissionStatus.initial,
      this.forgotPasswordStatus = FormzSubmissionStatus.initial,
      this.authdata,
      this.initialized = false})
      : super._();

  @override
  final User? user;
  @override
  final SchoolModel? school;
  @override
  @JsonKey()
  final EmailFormz email;
  @override
  @JsonKey()
  final PasswordFormz password;
  @override
  @JsonKey()
  final PasswordConfirmFormz passwordConfirm;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final dynamic acceptTerms;
  @override
  final SignupResponse? signupResponse;
  @override
  @JsonKey()
  final FormzSubmissionStatus signInStatus;
  @override
  @JsonKey()
  final FormzSubmissionStatus signUpStatus;
  @override
  @JsonKey()
  final OTPFormz otp;
  @override
  @JsonKey()
  final FormzSubmissionStatus otpStatus;
  @override
  @JsonKey()
  final FormzSubmissionStatus resendOtpStatus;
  @override
  @JsonKey()
  final FormzSubmissionStatus changeTeacherPasswordStatus;
  @override
  @JsonKey()
  final ForgotPasswordFormz forgotPassword;
  @override
  @JsonKey()
  final FormzSubmissionStatus createNewPasswordStatus;
  @override
  @JsonKey()
  final FormzSubmissionStatus forgotPasswordStatus;
  @override
  final AuthData? authdata;
  @override
  @JsonKey()
  final bool initialized;

  @override
  String toString() {
    return 'AuthState(user: $user, school: $school, email: $email, password: $password, passwordConfirm: $passwordConfirm, errorMessage: $errorMessage, acceptTerms: $acceptTerms, signupResponse: $signupResponse, signInStatus: $signInStatus, signUpStatus: $signUpStatus, otp: $otp, otpStatus: $otpStatus, resendOtpStatus: $resendOtpStatus, changeTeacherPasswordStatus: $changeTeacherPasswordStatus, forgotPassword: $forgotPassword, createNewPasswordStatus: $createNewPasswordStatus, forgotPasswordStatus: $forgotPasswordStatus, authdata: $authdata, initialized: $initialized)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                other.passwordConfirm == passwordConfirm) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.acceptTerms, acceptTerms) &&
            (identical(other.signupResponse, signupResponse) ||
                other.signupResponse == signupResponse) &&
            (identical(other.signInStatus, signInStatus) ||
                other.signInStatus == signInStatus) &&
            (identical(other.signUpStatus, signUpStatus) ||
                other.signUpStatus == signUpStatus) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.otpStatus, otpStatus) ||
                other.otpStatus == otpStatus) &&
            (identical(other.resendOtpStatus, resendOtpStatus) ||
                other.resendOtpStatus == resendOtpStatus) &&
            (identical(other.changeTeacherPasswordStatus,
                    changeTeacherPasswordStatus) ||
                other.changeTeacherPasswordStatus ==
                    changeTeacherPasswordStatus) &&
            (identical(other.forgotPassword, forgotPassword) ||
                other.forgotPassword == forgotPassword) &&
            (identical(
                    other.createNewPasswordStatus, createNewPasswordStatus) ||
                other.createNewPasswordStatus == createNewPasswordStatus) &&
            (identical(other.forgotPasswordStatus, forgotPasswordStatus) ||
                other.forgotPasswordStatus == forgotPasswordStatus) &&
            (identical(other.authdata, authdata) ||
                other.authdata == authdata) &&
            (identical(other.initialized, initialized) ||
                other.initialized == initialized));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        user,
        school,
        email,
        password,
        passwordConfirm,
        errorMessage,
        const DeepCollectionEquality().hash(acceptTerms),
        signupResponse,
        signInStatus,
        signUpStatus,
        otp,
        otpStatus,
        resendOtpStatus,
        changeTeacherPasswordStatus,
        forgotPassword,
        createNewPasswordStatus,
        forgotPasswordStatus,
        authdata,
        initialized
      ]);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {final User? user,
      final SchoolModel? school,
      final EmailFormz email,
      final PasswordFormz password,
      final PasswordConfirmFormz passwordConfirm,
      final String? errorMessage,
      final dynamic acceptTerms,
      final SignupResponse? signupResponse,
      final FormzSubmissionStatus signInStatus,
      final FormzSubmissionStatus signUpStatus,
      final OTPFormz otp,
      final FormzSubmissionStatus otpStatus,
      final FormzSubmissionStatus resendOtpStatus,
      final FormzSubmissionStatus changeTeacherPasswordStatus,
      final ForgotPasswordFormz forgotPassword,
      final FormzSubmissionStatus createNewPasswordStatus,
      final FormzSubmissionStatus forgotPasswordStatus,
      final AuthData? authdata,
      final bool initialized}) = _$AuthStateImpl;
  const _AuthState._() : super._();

  @override
  User? get user;
  @override
  SchoolModel? get school;
  @override
  EmailFormz get email;
  @override
  PasswordFormz get password;
  @override
  PasswordConfirmFormz get passwordConfirm;
  @override
  String? get errorMessage;
  @override
  dynamic get acceptTerms;
  @override
  SignupResponse? get signupResponse;
  @override
  FormzSubmissionStatus get signInStatus;
  @override
  FormzSubmissionStatus get signUpStatus;
  @override
  OTPFormz get otp;
  @override
  FormzSubmissionStatus get otpStatus;
  @override
  FormzSubmissionStatus get resendOtpStatus;
  @override
  FormzSubmissionStatus get changeTeacherPasswordStatus;
  @override
  ForgotPasswordFormz get forgotPassword;
  @override
  FormzSubmissionStatus get createNewPasswordStatus;
  @override
  FormzSubmissionStatus get forgotPasswordStatus;
  @override
  AuthData? get authdata;
  @override
  bool get initialized;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
