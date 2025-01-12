import 'package:bloc/bloc.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/features/authentication/api/clients/authentication.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/auth_data.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/shared_prefercences.dart';
import 'package:email_validator/email_validator.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';
part 'onboarding_bloc.freezed.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(const OnboardingState()) {
    // on<_Init>(_init);
    on<_EmailChanged>(_emailChanged);
    on<_PasswordChanged>(_passwordChanged);
    on<_ConfirmPasswordChanged>(_passwordConfirmChanged);
    on<_AcceptTermsChanged>(_acceptTermsChanged);
    on<_SignUp>(_signUp);
    // on<_ResetSignUpForm>(_resetSignUpForm);
    on<_SignUpSuccessful>(_signUpSuccessful);
    on<_SignUpFailed>(_signUpFailed);
    on<_ErrorMessage>(_errorMessage);
  }

  // void _init(_Init event, Emitter<OnboardingState> emit) {
  //   emit(state.copyWith(
  //     status: FormzStatus.pure,
  //     email: Email.pure(),
  //     password: Password.pure(),
  //     confirmPassword: ConfirmPassword.pure(),
  //     acceptTerms: AcceptTerms.pure(),
  //   ));
  // }

  void _emailChanged(_EmailChanged event, Emitter<OnboardingState> emit) {
    final email = EmailFormz.dirty(event.email);
    emit(
      state.copyWith(
        email: email.isValid ? email : EmailFormz.pure(event.email),
      ),
    );
  }

  void _passwordChanged(_PasswordChanged event, Emitter<OnboardingState> emit) {
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
    Emitter<OnboardingState> emit,
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

  void _acceptTermsChanged(
      _AcceptTermsChanged event, Emitter<OnboardingState> emit) {
    emit(state.copyWith(acceptTerms: event.acceptTerms));
  }

  void _signUp(_SignUp event, Emitter<OnboardingState> emit) async {
    if (state.signUpStatus == FormzSubmissionStatus.inProgress) return;

    if (!state.isSignUpFormValid || state.acceptTerms == false) {
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
      if (state.acceptTerms == false) {
        add(const _ErrorMessage(AppStrings.pleaseAgreeToTheToS));
        return;
      }

      emit(state.copyWith(signUpStatus: FormzSubmissionStatus.inProgress));

      //come back to this for name and all

      final userRole = await UserRoleHelper.getUserRole();

      try {
        final authData = await locator<AuthenticationClient>().signUp(
          state.email.value.trim(),
          state.password.value.trim(),
          userRole.toString(),
        );
        add(_SignUpSuccessful(authData));
      } catch (error, trace) {
        logError(error, trace);
        add(const _SignUpFailed());
      }
    }
  }

  void _signUpSuccessful(
    _SignUpSuccessful event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(
      state.copyWith(
        signUpStatus: FormzSubmissionStatus.success,
        authData: event.authData,
      ),
    );
    add(const _ResetSignUpForm());
  }

  void _signUpFailed(_SignUpFailed event, Emitter<OnboardingState> emit) async {
    emit(
      state.copyWith(
        signUpStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message,
      ),
    );
  }

  void _errorMessage(_ErrorMessage event, Emitter<OnboardingState> emit) {
    emit(
      state.copyWith(
        errorMessage: event.message,
      ),
    );
  }
}
