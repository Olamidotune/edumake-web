import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/authentication/api/clients/authentication.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/sign_up_response.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/shared_prefercences.dart';
import 'package:email_validator/email_validator.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    // on<_Init>(_init);
    on<_EmailChanged>(_emailChanged);
    on<_PasswordChanged>(_passwordChanged);
    on<_ConfirmPasswordChanged>(_passwordConfirmChanged);
    on<_AcceptTermsChanged>(_acceptTermsChanged);
    on<_SignUp>(_signUp);
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
    on<_ErrorMessage>(_errorMessage);
  }

  // void _init(_Init event, Emitter<AuthState> emit) {
  //   emit(state.copyWith(
  //     status: FormzStatus.pure,
  //     email: Email.pure(),
  //     password: Password.pure(),
  //     confirmPassword: ConfirmPassword.pure(),
  //     acceptTerms: AcceptTerms.pure(),
  //   ));
  // }

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

    try {
      final signupResponse = await locator<AuthenticationClient>().signUp(
        state.email.value.trim(),
        state.password.value.trim(),
        userRole.toString().split('.').last,
      );
      logInfo(signupResponse);
      add(_SignUpSuccessful(signupResponse));
    } catch (error, trace) {
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
    add(const _ResetSignUpForm());
  }

  void _signUpFailed(_SignUpFailed event, Emitter<AuthState> emit) async {
    emit(
      state.copyWith(
        signUpStatus: FormzSubmissionStatus.failure,
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
