import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/fees_payment/fees_payment_client.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/fees_payment_request_body.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/fees_payment_response.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/response.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fees_payment_event.dart';
part 'fees_payment_state.dart';
part 'fees_payment_bloc.freezed.dart';

class FeesPaymentBloc extends Bloc<FeesPaymentEvent, FeesPaymentState> {
  FeesPaymentBloc() : super(const FeesPaymentState()) {
    on<_FeesTitleChanged>(_feesTitleChanged);
    on<_FeesDetailsChanged>(_feesDetailsChanged);
    on<_FeesTotalAmountChanged>(_feesTotalAmountChanged);
    on<_BreakDownFeesAmountChanged>(_breakDownFeesAmountChanged);
    on<_BreakDownTitleChanged>(_breakDownTitleChanged);
    on<_AddFees>(_addFees);
    on<_AddFeesSuccessful>(_addFeesSuccessful);
    on<_AddFeesFailed>(_addFeesFailed);
    on<_FetchFees>(_fetchFees);
    on<_FetchFeesSuccessful>(_fetchFeesSuccessful);
    on<_FetchFeesFailed>(_fetchFeesFailed);
    on<_ErrorMessage>(_errorMessage);
  }

  void _feesTitleChanged(
      _FeesTitleChanged event, Emitter<FeesPaymentState> emit) {
    final title = FeesTitleFormz.dirty(event.title);

    emit(state.copyWith(
        feesTitle:
            title.isNotValid ? title : FeesTitleFormz.pure(event.title)));
  }

  void _feesDetailsChanged(
      _FeesDetailsChanged event, Emitter<FeesPaymentState> emit) {
    final details = FeesDetailsFormz.dirty(event.details);

    emit(state.copyWith(
        feesDetails: details.isNotValid
            ? details
            : FeesDetailsFormz.pure(event.details)));
  }

  void _feesTotalAmountChanged(
      _FeesTotalAmountChanged event, Emitter<FeesPaymentState> emit) {
    final feesAmount = FeesTotalAmountFormz.dirty(event.total);

    emit(state.copyWith(
        feesTotalAmount: feesAmount.isNotValid
            ? feesAmount
            : FeesTotalAmountFormz.pure(event.total)));
  }

  void _breakDownFeesAmountChanged(
      _BreakDownFeesAmountChanged event, Emitter<FeesPaymentState> emit) {
    final breakDownAmount =
        FeesBreakDownAmountFormz.dirty(event.breakdownFeeAmount);

    emit(state.copyWith(
        feesBreakDownAmount: breakDownAmount.isNotValid
            ? breakDownAmount
            : FeesBreakDownAmountFormz.pure(event.breakdownFeeAmount)));
  }

  void _breakDownTitleChanged(
      _BreakDownTitleChanged event, Emitter<FeesPaymentState> emit) {
    final breakDownTitle = FeesBreakdownTitleFormz.dirty(event.breakDownTitle);

    emit(state.copyWith(
        feesBreakdownTitle: breakDownTitle.isNotValid
            ? breakDownTitle
            : FeesBreakdownTitleFormz.pure(event.breakDownTitle)));
  }

  void _addFees(_AddFees event, Emitter<FeesPaymentState> emit) async {
    if (state.addFeesPaymentStatus == FormzSubmissionStatus.inProgress) return;

    emit(
        state.copyWith(addFeesPaymentStatus: FormzSubmissionStatus.inProgress));

    try {
      final addFees = await locator<FeesPaymentClient>().addFees(
          await getAuthorization(),
          await getSchoolID(),
          event.feesPaymentRequestBody);

      add(_AddFeesSuccessful(addFees));
    } catch (error, trace) {
      logError(error, trace);

      if (error is DioError && error.response?.data['message'] != null) {
        add(_AddFeesFailed(error.response?.data['message'] as String?));
      } else {
        add(const _AddFeesFailed('An unexpected error occurred'));
      }
    }
  }

  void _addFeesSuccessful(
      _AddFeesSuccessful event, Emitter<FeesPaymentState> emit) {
    emit(state.copyWith(
        addFeesPaymentStatus: FormzSubmissionStatus.success,
        errorMessage: null));
  }

  void _addFeesFailed(_AddFeesFailed event, Emitter<FeesPaymentState> emit) {
    emit(state.copyWith(
        addFeesPaymentStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message));
  }

  void _fetchFees(_FetchFees event, Emitter<FeesPaymentState> emit) async {
    emit(state.copyWith(
        fetchFeesPaymentStatus: FormzSubmissionStatus.inProgress));

    try {
      final fees = await locator<FeesPaymentClient>().fetchFees(
        await getAuthorization(),
        await getSchoolID(),
        event.studentId ?? '',
      );

      add(_FetchFeesSuccessful(fees));
    } catch (error, trace) {
      logError(error, trace);
      add(_FetchFeesFailed(error.toString()));
    }
  }

  void _fetchFeesSuccessful(
      _FetchFeesSuccessful event, Emitter<FeesPaymentState> emit) {
    emit(state.copyWith(
        fetchFeesPaymentStatus: FormzSubmissionStatus.success,
        feesResponse: event.feesPayment,
        datum: event.feesPayment.data,
        errorMessage: null));
  }

  void _fetchFeesFailed(
      _FetchFeesFailed event, Emitter<FeesPaymentState> emit) {
    emit(state.copyWith(
        fetchFeesPaymentStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message));
  }

  void _errorMessage(_ErrorMessage event, Emitter<FeesPaymentState> emit) {
    emit(
      state.copyWith(errorMessage: state.errorMessage),
    );
  }
}
