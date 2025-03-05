import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/features/authentication/api/clients/authentication.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/auth_data.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/school_model.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/sign_up_response.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/user.dart';
import 'package:edumake_frontend/src/shared/services/auth_services.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/notification_service.dart';
import 'package:edumake_frontend/src/shared/services/shared_preferences.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<_Init>(_init);
    on<_EmailChanged>(_emailChanged);
    on<_PasswordChanged>(_passwordChanged);
    on<_ConfirmPasswordChanged>(_passwordConfirmChanged);
    on<_AcceptTermsChanged>(_acceptTermsChanged);
    on<_SignUp>(_signUp);
    on<_SignIn>(_signIn);
    on<_SignInSuccessful>(_signInSuccessful);
    on<_SignInFailed>(_signInFailed);
    on<_ResetSignUpForm>(_resetSignUpForm);
    on<_SignUpSuccessful>(_signUpSuccessful);
    on<_SignUpFailed>(_signUpFailed);
    on<_OtpChanged>(_otpChanged);
    on<_VerifyOtp>(_verifyOtp);
    on<_VerifyOtpSuccessful>(_verifyOtpSuccessful);
    on<_VerifyOtpFailed>(_verifyOtpFailed);
    on<_ResendOtp>(_resendOtp);
    on<_ForgotPassword>(_forgotPassword);
    on<_ForgotPasswordSuccessful>(_forgotPasswordSuccessful);
    on<_ForgotPasswordFailed>(_forgotPasswordFailed);
    on<_CreateNewPassword>(_createNewPassword);
    on<_CreateNewPasswordSuccessful>(_createNewPasswordSuccessful);
    on<_ErrorMessage>(_errorMessage);

    add(const _Init());
  }

  void _init(_Init event, Emitter<AuthState> emit) async {
    await UserRoleHelper.getUserRole();
    final persistedUser = await locator<AuthServices>().isSignedIn()
        ? await locator<AuthServices>().getUser()
        : null;
    emit(state.copyWith(initialized: true, user: persistedUser));
  }

  void _emailChanged(_EmailChanged event, Emitter<AuthState> emit) {
    final email = EmailFormz.dirty(event.email);
    emit(
      state.copyWith(
        email: email.isValid ? email : EmailFormz.pure(event.email),
      ),
    );
  }

  void _passwordChanged(_PasswordChanged event, Emitter<AuthState> emit) {
    final password = PasswordFormz.dirty(event.password);
    emit(
      state.copyWith(
        password:
            password.isValid ? password : PasswordFormz.pure(event.password),
      ),
    );
  }

  void _passwordConfirmChanged(
    _ConfirmPasswordChanged event,
    Emitter<AuthState> emit,
  ) {
    final passwordConfirm = PasswordConfirmFormz.dirty(event.password);

    emit(
      state.copyWith(
        passwordConfirm: passwordConfirm.isValid
            ? passwordConfirm
            : PasswordConfirmFormz.pure(event.password),
      ),
    );
  }

  void _acceptTermsChanged(_AcceptTermsChanged event, Emitter<AuthState> emit) {
    emit(state.copyWith(acceptTerms: event.acceptTerms));
  }

  void _signUp(_SignUp event, Emitter<AuthState> emit) async {
    if (state.signUpStatus == FormzSubmissionStatus.inProgress) return;

    emit(
      state.copyWith(
        email: EmailFormz.dirty(state.email.value),
        password: PasswordFormz.dirty(state.password.value),
        passwordConfirm: PasswordConfirmFormz.dirty(
          state.passwordConfirm.value,
          state.password.value,
        ),
      ),
    );

    if (!state.isSignUpFormValid) {
      return;
    }

    emit(state.copyWith(signUpStatus: FormzSubmissionStatus.inProgress));

    final userRole = await UserRoleHelper.getUserRole();
    final roleForAPI =
        UserRoleHelper.getRoleStringForAPI(userRole ?? UserRole.parent);

    final deviceId = await getDeviceId();
    logInfo('Device ID: $deviceId');

    await NotificationService.instance.initialize();
    final fcmToken = NotificationService.instance.fcmToken;
    if (fcmToken == null) {
      logInfo('FCM token is null, continuing signup without token.');
    }

    try {
      final signupResponse = await locator<AuthenticationClient>().signUp(
        state.email.value.trim(),
        state.password.value.trim(),
        roleForAPI,
        fcmToken ?? '',
        deviceId ?? 'unknown', // Handle null case
      );
      add(_SignUpSuccessful(signupResponse));
    } catch (error, trace) {
      debugPrint(
        'Error type: ${error is DioError && error.response?.data['message'] != null}',
      );
      logError(error, trace);
      if (error is DioError && error.response?.data['message'] != null) {
        add(_SignUpFailed(error.response?.data['message'] as String?));
      } else {
        add(const _SignUpFailed('An unexpected error occurred'));
      }
    }
  }

  void _signUpSuccessful(
    _SignUpSuccessful event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      state.copyWith(
        signUpStatus: FormzSubmissionStatus.success,
        signupResponse: event.signupResponse,
      ),
    );
    emit(
      state.copyWith(
        signInStatus: FormzSubmissionStatus.initial,
      ),
    );
    // add(const _ResetSignUpForm());
  }

  void _signUpFailed(_SignUpFailed event, Emitter<AuthState> emit) async {
    emit(
      state.copyWith(
        signUpStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message ?? 'An error occurred',
      ),
    );
  }

  void _signIn(_SignIn event, Emitter<AuthState> emit) async {
    if (state.signInStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(
      state.copyWith(
        email: EmailFormz.dirty(state.email.value),
        password: PasswordFormz.dirty(state.password.value),
      ),
    );

    if (!Formz.validate([state.email, state.password])) {
      emit(
        state.copyWith(
          email: EmailFormz.pure(state.email.value),
          password: PasswordFormz.pure(state.password.value),
        ),
      );
      return;
    }

    emit(state.copyWith(signInStatus: FormzSubmissionStatus.inProgress));

    try {
      final authData = await locator<AuthenticationClient>().signIn(
        state.email.value.trim(),
        state.password.value.trim(),
      );

      add(_SignInSuccessful(authData));
    } catch (error, trace) {
      logError(error, trace);
      if (error is DioError && error.response?.data['message'] != null) {
        add(_SignInFailed(error.response?.data['message'] as String?));
      } else {
        add(const _SignInFailed('An unexpected error occurred'));
      }
    }
  }

  void _signInSuccessful(
    _SignInSuccessful event,
    Emitter<AuthState> emit,
  ) async {
    //here we set the user as signed in
    await AuthServices().setSignedIn(
      event.authData.data.token,
      event.authData.data.user,
      event.authData.data.user.school,
    );

    await AuthServices()
        .setSchoolID(event.authData.data.user.school?.schoolID ?? '');

    emit(
      state.copyWith(
        initialized: true,
        user: event.authData.data.user,
        school: event.authData.data.user.school,
        signInStatus: FormzSubmissionStatus.success,
      ),
    );
    // After navigation occurs via buildWhen, reset the status
    emit(
      state.copyWith(
        signInStatus: FormzSubmissionStatus.initial,
      ),
    );
  }

  void _signInFailed(_SignInFailed event, Emitter<AuthState> emit) async {
    emit(
      state.copyWith(
        signInStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message ?? 'An error occurred',
      ),
    );
  }

  void _errorMessage(_ErrorMessage event, Emitter<AuthState> emit) {
    emit(
      state.copyWith(
        errorMessage: event.message,
      ),
    );
  }

  void _resetSignUpForm(_ResetSignUpForm event, Emitter<AuthState> emit) {
    emit(
      state.copyWith(
        email: const EmailFormz.pure(),
        password: const PasswordFormz.pure(),
        passwordConfirm: const PasswordConfirmFormz.pure(),
        acceptTerms: false,
        signUpStatus: FormzSubmissionStatus.initial,
      ),
    );
  }

  void _otpChanged(_OtpChanged event, Emitter<AuthState> emit) {
    final otp = OTPFormz.dirty(event.otp);
    emit(
      state.copyWith(
        otp: otp.isValid ? OTPFormz.dirty(event.otp) : OTPFormz.pure(event.otp),
      ),
    );
  }

  void _verifyOtp(_VerifyOtp event, Emitter<AuthState> emit) async {
    if (state.otpStatus == FormzSubmissionStatus.inProgress) {
      return;
    }
    if (!Formz.validate([state.otp])) {
      emit(state.copyWith(otp: OTPFormz.pure(state.otp.value)));
      return;
    }

    emit(state.copyWith(otpStatus: FormzSubmissionStatus.inProgress));

    try {
      await locator<AuthenticationClient>().verifyOTP(
        event.otp ?? state.otp.value,
      );
      logMessage('OTP verified successfully');
      add(const _VerifyOtpSuccessful());
    } catch (error, trace) {
      logError(error, trace);
      if (error is DioError && error.response?.data['message'] != null) {
        add(_VerifyOtpFailed(error.response?.data['message'] as String?));
      } else {
        add(const _VerifyOtpFailed('An unexpected error occurred'));
      }
    }
  }

  void _verifyOtpSuccessful(
    _VerifyOtpSuccessful event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(otpStatus: FormzSubmissionStatus.success));
  }

  void _verifyOtpFailed(_VerifyOtpFailed event, Emitter<AuthState> emit) async {
    emit(
      state.copyWith(
        otpStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message ?? 'An error occurred',
      ),
    );
  }

  void _resendOtp(_ResendOtp event, Emitter<AuthState> emit) async {
    if (state.resendOtpStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(state.copyWith(resendOtpStatus: FormzSubmissionStatus.inProgress));

    try {
      await locator<AuthenticationClient>().resendOTP(state.email.value);
      emit(state.copyWith(resendOtpStatus: FormzSubmissionStatus.success));
    } catch (error, trace) {
      logError(error, trace);
      if (error is DioError && error.response?.data['message'] != null) {
        emit(
          state.copyWith(
            resendOtpStatus: FormzSubmissionStatus.failure,
            errorMessage: error.response?.data['message'] as String,
          ),
        );
      } else {
        emit(
          state.copyWith(
            resendOtpStatus: FormzSubmissionStatus.failure,
            errorMessage: 'An unexpected error occurred',
          ),
        );
      }
    }
  }

  void _forgotPassword(_ForgotPassword event, Emitter<AuthState> emit) async {
    if (state.forgotPasswordStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(
      state.copyWith(forgotPasswordStatus: FormzSubmissionStatus.inProgress),
    );

    try {
      await locator<AuthenticationClient>().forgotPassword(event.email);
      logInfo(event.email);
      add(const _ForgotPasswordSuccessful());
    } catch (error, trace) {
      logError(error, trace);
      if (error is DioError && error.response?.data['message'] != null) {
        emit(
          state.copyWith(
            forgotPasswordStatus: FormzSubmissionStatus.failure,
            errorMessage: error.response?.data['message'] as String,
          ),
        );
        add(_ForgotPasswordFailed(error.response?.data['message'] as String?));
      } else {
        add(const _ForgotPasswordFailed('An unexpected error occurred'));
      }
    }
  }

  void _createNewPassword(
    _CreateNewPassword event,
    Emitter<AuthState> emit,
  ) async {
    if (state.createNewPasswordStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(
      state.copyWith(
        createNewPasswordStatus: FormzSubmissionStatus.inProgress,
      ),
    );

    try {
      await locator<AuthenticationClient>().createNewPassword(
        state.otp.value,
        event.password,
      );
      add(_CreateNewPasswordSuccessful(event.password));
    } catch (error, trace) {
      logError(error, trace);
      if (error is DioError && error.response?.data['message'] != null) {
        emit(
          state.copyWith(
            createNewPasswordStatus: FormzSubmissionStatus.failure,
            errorMessage: error.response?.data['message'] as String,
          ),
        );
      } else {
        emit(
          state.copyWith(
            createNewPasswordStatus: FormzSubmissionStatus.failure,
            errorMessage: 'An unexpected error occurred',
          ),
        );
      }
    }
  }

  void _createNewPasswordSuccessful(
    _CreateNewPasswordSuccessful event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      state.copyWith(
        createNewPasswordStatus: FormzSubmissionStatus.success,
      ),
    );

    // After navigation occurs via buildWhen, reset the status
    emit(
      state.copyWith(
        createNewPasswordStatus: FormzSubmissionStatus.initial,
      ),
    );
  }

  void _forgotPasswordSuccessful(
    _ForgotPasswordSuccessful event,
    Emitter<AuthState> emit,
  ) {
    emit(
      state.copyWith(
        forgotPasswordStatus: FormzSubmissionStatus.success,
      ),
    );

    // After navigation occurs via buildWhen, reset the status
    emit(
      state.copyWith(
        forgotPasswordStatus: FormzSubmissionStatus.initial,
      ),
    );
  }

  void _forgotPasswordFailed(
    _ForgotPasswordFailed event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      state.copyWith(
        forgotPasswordStatus: FormzSubmissionStatus.initial,
        errorMessage: event.message ?? 'An error occurred',
      ),
    );
  }
}
