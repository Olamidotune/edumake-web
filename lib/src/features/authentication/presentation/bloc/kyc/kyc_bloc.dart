import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/authentication/api/clients/authentication.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/kyc_response.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/user.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/persistence_services.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kyc_event.dart';
part 'kyc_state.dart';
part 'kyc_bloc.freezed.dart';

class KycBloc extends Bloc<KycEvent, KycState> {
  KycBloc() : super(const KycState()) {
    on<_FirstNameChanged>(_onFirstNameChanged);
    on<_LastNameChanged>(_onLastNameChanged);
    on<_PhoneNumberChanged>(_onPhoneNumberChanged);
    on<_NinChanged>(_onNinChanged);
    on<_SubmitKyc>(_onSubmitKyc);
    on<_SubmitKycSuccess>(_onSubmitKycSuccess);
    on<_SubmitKycFailure>(_onSubmitKycFailure);
    on<_ResetKyc>(_onResetKyc);
  }

  void _onFirstNameChanged(_FirstNameChanged event, Emitter<KycState> emit) {
    final firstName = FirstNameFormz.dirty(event.firstName);
    emit(
      state.copyWith(
        firstName: firstName.isValid
            ? FirstNameFormz.dirty(event.firstName)
            : firstName,
      ),
    );
  }

  void _onLastNameChanged(_LastNameChanged event, Emitter<KycState> emit) {
    final lastName = LastNameFormz.dirty(event.lastName);
    emit(
      state.copyWith(
        lastName:
            lastName.isValid ? LastNameFormz.dirty(event.lastName) : lastName,
      ),
    );
  }

  void _onPhoneNumberChanged(
    _PhoneNumberChanged event,
    Emitter<KycState> emit,
  ) {
    final phoneNumber = PhoneNumberFormz.dirty(event.phoneNumber);
    emit(
      state.copyWith(
        phoneNumber: phoneNumber.isValid
            ? PhoneNumberFormz.dirty(event.phoneNumber)
            : phoneNumber,
      ),
    );
  }

  void _onNinChanged(_NinChanged event, Emitter<KycState> emit) {
    final nin = NinFormz.dirty(event.nin);
    emit(
      state.copyWith(
        nin: nin.isValid ? NinFormz.dirty(event.nin) : nin,
      ),
    );
  }

  void _onSubmitKyc(_SubmitKyc event, Emitter<KycState> emit) async {
    if (state.kycStatus == FormzSubmissionStatus.inProgress) return;

    emit(
      state.copyWith(
        firstName: FirstNameFormz.dirty(state.firstName.value),
        lastName: LastNameFormz.dirty(state.lastName.value),
        phoneNumber: PhoneNumberFormz.dirty(state.phoneNumber.value),
        nin: NinFormz.dirty(state.nin.value),
      ),
    );

    emit(
      state.copyWith(
        kycStatus: FormzSubmissionStatus.inProgress,
      ),
    );

    try {
      final authorization = await getAuthorization();
      final result = await locator<AuthenticationClient>().submitKYC(
        authorization,
        state.firstName.value.trim(),
        state.lastName.value.trim(),
        state.phoneNumber.value.trim(),
        state.nin.value.trim(),
      );

      await PersistenceServices().saveFirstName(state.firstName.value.trim());
      await PersistenceServices().saveLastName(state.lastName.value.trim());

      add(_SubmitKycSuccess(result));
    } catch (error, trace) {
      logError(error, trace);
      if (error is DioError && error.response?.data['message'] != null) {
        add(_SubmitKycFailure(error.response?.data['message'] as String));
      } else {
        add(const _SubmitKycFailure('An error occurred'));
      }
    }
  }

  void _onSubmitKycSuccess(
    _SubmitKycSuccess event,
    Emitter<KycState> emit,
  ) async {
    emit(
      state.copyWith(
        kycStatus: FormzSubmissionStatus.success,
        kycResponse: event.kycResponse,
      ),
    );

    logInfo(event.kycResponse.message);
    add(const KycEvent.resetKyc());
  }

  void _onSubmitKycFailure(
    _SubmitKycFailure event,
    Emitter<KycState> emit,
  ) async {
    emit(
      state.copyWith(
        kycStatus: FormzSubmissionStatus.failure,
        errorMessage: event.error,
      ),
    );
  }

  void _onResetKyc(_ResetKyc event, Emitter<KycState> emit) {
    emit(
      state.copyWith(
        firstName: const FirstNameFormz.pure(),
        lastName: const LastNameFormz.pure(),
        phoneNumber: const PhoneNumberFormz.pure(),
        nin: const NinFormz.pure(),
        kycStatus: FormzSubmissionStatus.initial,
        errorMessage: '',
      ),
    );
  }
}
