import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/authentication/api/clients/authentication.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/sign_up_response.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:email_validator/email_validator.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_kyc_event.dart';
part 'school_kyc_state.dart';
part 'school_kyc_bloc.freezed.dart';

class SchoolKycBloc extends Bloc<SchoolKycEvent, SchoolKycState> {
  SchoolKycBloc() : super(const SchoolKycState()) {
    on<_OnFirstNameChanged>(_onFirstNameChanged);
    on<_OnLastNameChanged>(_onLastNameChanged);
    on<_OnPhoneNumberChanged>(_onPhoneNumberChanged);
    on<_OnSchoolEmailChanged>(_onSchoolEmailChanged);
    on<_OnSchoolAddressChanged>(_onSchoolAddressChanged);
    on<_OnSchoolTypeChanged>(_onSchoolTypeChanged);
    on<_OnSchoolNameChanged>(_onSchoolNameChanged);
    on<_OnClassNumberRangeChanged>(_onClassNumberRangeChanged);
    on<_OnStudentNumberRangeChanged>(_onStudentNumberRangeChanged);
    on<_OnTeacherNumberRangeChanged>(_onTeacherNumberRangeChanged);
    on<_SubmitSchoolKyc>(_onSubmitSchoolKyc);
    on<_SubmitSchoolKycSuccess>(_onSubmitSchoolKycSuccess);
    on<_SubmitSchoolKycFailure>(_onSubmitSchoolKycFailure);
    on<_ResetSchoolKyc>(_onResetSchoolKyc);
    on<_ErrorMessage>(_errorMessage);
  }

  void _onFirstNameChanged(
      _OnFirstNameChanged event, Emitter<SchoolKycState> emit) {
    final firstName = FirstNameFormz.dirty(event.firstName);
    emit(
      state.copyWith(
        firstName: firstName.isValid
            ? firstName
            : FirstNameFormz.pure(event.firstName),
      ),
    );
  }

  void _onLastNameChanged(
      _OnLastNameChanged event, Emitter<SchoolKycState> emit) {
    final lastName = LastNameFormz.dirty(event.lastName);
    emit(
      state.copyWith(
        lastName:
            lastName.isValid ? lastName : LastNameFormz.pure(event.lastName),
      ),
    );
  }

  void _onPhoneNumberChanged(
      _OnPhoneNumberChanged event, Emitter<SchoolKycState> emit) {
    final phoneNumber = PhoneNumberFormz.dirty(event.phoneNumber);
    emit(
      state.copyWith(
        phoneNumber: phoneNumber.isValid
            ? phoneNumber
            : PhoneNumberFormz.pure(event.phoneNumber),
      ),
    );
  }

  void _onSchoolEmailChanged(
      _OnSchoolEmailChanged event, Emitter<SchoolKycState> emit) {
    final schoolEmail = SchooolEmailFormz.dirty(event.schoolEmail);
    emit(
      state.copyWith(
        schoolEmail: schoolEmail.isValid
            ? schoolEmail
            : SchooolEmailFormz.pure(event.schoolEmail),
      ),
    );
  }

  void _onSchoolAddressChanged(
      _OnSchoolAddressChanged event, Emitter<SchoolKycState> emit) {
    final schoolAddress = SchoolAddressFormz.dirty(event.schoolAddress);
    emit(
      state.copyWith(
        schoolAddress: schoolAddress.isValid
            ? schoolAddress
            : SchoolAddressFormz.pure(event.schoolAddress),
      ),
    );
  }

  void _onSchoolTypeChanged(
      _OnSchoolTypeChanged event, Emitter<SchoolKycState> emit) {
    emit(
      state.copyWith(
        schoolType: event.schoolType,
      ),
    );
  }

  void _onSchoolNameChanged(
      _OnSchoolNameChanged event, Emitter<SchoolKycState> emit) {
    final schoolName = SchoolNameFormz.dirty(event.schoolName);
    emit(
      state.copyWith(
        schoolName: schoolName.isValid
            ? schoolName
            : SchoolNameFormz.pure(event.schoolName),
      ),
    );
  }

  void _onClassNumberRangeChanged(
      _OnClassNumberRangeChanged event, Emitter<SchoolKycState> emit) {
    emit(
      state.copyWith(
        classNumberRange: event.classNumberRange,
      ),
    );
  }

  void _onStudentNumberRangeChanged(
      _OnStudentNumberRangeChanged event, Emitter<SchoolKycState> emit) {
    emit(
      state.copyWith(
        studentNumberRange: event.studentNumberRange,
      ),
    );
  }

  void _onTeacherNumberRangeChanged(
      _OnTeacherNumberRangeChanged event, Emitter<SchoolKycState> emit) {
    emit(
      state.copyWith(
        teacherNumberRange: event.teacherNumberRange,
      ),
    );
  }

  void _onSubmitSchoolKyc(
      _SubmitSchoolKyc event, Emitter<SchoolKycState> emit) async {
    if (state.schoolKycStatus == FormzSubmissionStatus.inProgress) return;

    emit(
      state.copyWith(
        firstName: FirstNameFormz.dirty(state.firstName.value),
        lastName: LastNameFormz.dirty(state.lastName.value),
        phoneNumber: PhoneNumberFormz.dirty(state.phoneNumber.value),
        schoolEmail: SchooolEmailFormz.dirty(state.schoolEmail.value),
        schoolType: state.schoolType,
        schoolAddress: SchoolAddressFormz.dirty(state.schoolAddress.value),
        schoolName: SchoolNameFormz.dirty(state.schoolName.value),
        classNumberRange: state.classNumberRange,
        studentNumberRange: state.studentNumberRange,
        teacherNumberRange: state.teacherNumberRange,
      ),
    );

    emit(
      state.copyWith(
        schoolKycStatus: FormzSubmissionStatus.inProgress,
      ),
    );

    try {
      final result = await locator<AuthenticationClient>().submitSchoolAdminKYC(
        await getAuthorization(),
        state.firstName.value.trim(),
        state.lastName.value.trim(),
        state.phoneNumber.value.trim(),
        state.schoolEmail.value.trim(),
        state.schoolType!,
        state.schoolAddress.value.trim(),
        state.schoolName.value.trim(),
        state.classNumberRange!,
        state.studentNumberRange!,
        state.teacherNumberRange!,
      );

      add(_SubmitSchoolKycSuccess(result));
    } catch (error) {
      if (error is DioError && error.response?.data['message'] != null) {
        add(_SubmitSchoolKycFailure(error.response?.data['message'] as String));
      } else {
        add(const _SubmitSchoolKycFailure('An error occurred'));
      }
    }
  }

  void _onSubmitSchoolKycSuccess(
      _SubmitSchoolKycSuccess event, Emitter<SchoolKycState> emit) async {
    emit(
      state.copyWith(
        signupResponse: event.schoolSignupResponse,
        schoolKycStatus: FormzSubmissionStatus.success,
      ),
    );
    logInfo(event.schoolSignupResponse.message);
  }

  void _onSubmitSchoolKycFailure(
    _SubmitSchoolKycFailure event,
    Emitter<SchoolKycState> emit,
  ) {
    emit(
      state.copyWith(
        errorMessage: event.error,
        schoolKycStatus: FormzSubmissionStatus.failure,
      ),
    );
  }

  void _onResetSchoolKyc(_ResetSchoolKyc event, Emitter<SchoolKycState> emit) {
    emit(
      state.copyWith(
        firstName: const FirstNameFormz.pure(),
        lastName: const LastNameFormz.pure(),
        phoneNumber: const PhoneNumberFormz.pure(),
        schoolEmail: const SchooolEmailFormz.pure(),
        schoolType: null,
        schoolAddress: const SchoolAddressFormz.pure(),
        schoolName: const SchoolNameFormz.pure(),
        classNumberRange: null,
        studentNumberRange: null,
        teacherNumberRange: null,
        errorMessage: null,
        signupResponse: null,
        schoolKycStatus: FormzSubmissionStatus.initial,
      ),
    );
  }

  void _errorMessage(_ErrorMessage event, Emitter<SchoolKycState> emit) {
    emit(
      state.copyWith(
        errorMessage: event.errorMessage,
      ),
    );
  }
}
