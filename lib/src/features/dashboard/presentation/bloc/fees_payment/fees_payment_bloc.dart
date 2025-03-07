import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/sign_up_response.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/fees_payment/fees_payment_client.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/fees_payment_request_body.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/fees_payment_response.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/payments/fetch_payment_response.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/fee_by_id_response.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/fetch_fees/fetch_fees_data.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/fetch_fees/fetch_fees_student_id.dart'
    as students show StudentId;
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/fetch_fees/responses.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/individual_student_payment_response.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fees_payment_bloc.freezed.dart';
part 'fees_payment_event.dart';
part 'fees_payment_state.dart';

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
    on<_FetchFeesById>(_fetchFeesById);
    on<_FetchFeesByIdSuccessful>(_fetchFeesByIdSuccessful);
    on<_FetchFeesByIdFailed>(_fetchFeesByIdFailed);
    on<_FetchPaymentHistoryForStudent>(_fetchPaymentHistoryForStudent);
    on<_FetchPaymentHistoryForStudentSuccessful>(
        _fetchPaymentHistoryForStudentSuccessful);
    on<_FetchPaymentHistoryForStudentFailed>(
        _fetchPaymentHistoryForStudentFailed);
    on<_MarkFeesPayment>(_markFeesPayment);
    on<_MarkFeesPaymentSuccessful>(_markFeesPaymentSuccessful);
    on<_MarkFeesPaymentFailed>(_markFeesPaymentFailed);
    on<_SubmitFeesIssue>(_submitFeesIssue);
    on<_SubmitFeesIssueSuccessful>(_submitFeesIssueSuccessful);
    on<_SubmitFeesIssueFailed>(_submitFeesIssueFailed);
    on<_FetchPayments>(_fetchPayments);
    on<_FetchPaymentsSuccessful>(_fetchPaymentsSuccessful);
    on<_FetchPaymentsFailed>(_fetchPaymentsFailed);
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
        event.parentSchoolId ?? await getSchoolID(),
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
        fetchFeesResponseDatum: event.feesPayment.data,
        errorMessage: null));
  }

  void _fetchFeesFailed(
      _FetchFeesFailed event, Emitter<FeesPaymentState> emit) {
    emit(state.copyWith(
        fetchFeesPaymentStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message));
  }

  void _fetchFeesById(
      _FetchFeesById event, Emitter<FeesPaymentState> emit) async {
    if (state.fetchFeesByIdStatus == FormzSubmissionStatus.inProgress) return;

    emit(state.copyWith(fetchFeesByIdStatus: FormzSubmissionStatus.inProgress));

    try {
      final breakDown = await locator<FeesPaymentClient>().fetchFeesByID(
        await getAuthorization(),
        event.feeId,
      );

      add(_FetchFeesByIdSuccessful(breakDown));
    } catch (error, trace) {
      logError(error, trace);
      add(_FetchFeesByIdFailed(error.toString()));
    }
  }

  void _fetchFeesByIdSuccessful(
      _FetchFeesByIdSuccessful event, Emitter<FeesPaymentState> emit) {
    emit(state.copyWith(
        fetchFeesByIdStatus: FormzSubmissionStatus.success,
        fetchFeesById: event.fetchFeesById,
        fetchFeesByIdResponseDatum: event.fetchFeesById.data,
        errorMessage: null));
  }

  void _fetchFeesByIdFailed(
      _FetchFeesByIdFailed event, Emitter<FeesPaymentState> emit) {
    emit(state.copyWith(
        fetchFeesByIdStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message));
  }

  void _fetchPaymentHistoryForStudent(_FetchPaymentHistoryForStudent event,
      Emitter<FeesPaymentState> emit) async {
    if (state.fetchPaymentHistoryForStudentStatus ==
        FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(state.copyWith(
        fetchPaymentHistoryForStudentStatus: FormzSubmissionStatus.inProgress));

    try {
      final fees =
          await locator<FeesPaymentClient>().fetchPaymentHistoryForStudent(
        await getAuthorization(),
        event.studentId,
      );

      add(_FetchPaymentHistoryForStudentSuccessful(fees));
    } catch (error, trace) {
      logError(error, trace);
      add(_FetchPaymentHistoryForStudentFailed(error.toString()));
    }
  }

  void _fetchPaymentHistoryForStudentSuccessful(
      _FetchPaymentHistoryForStudentSuccessful event,
      Emitter<FeesPaymentState> emit) {
    emit(state.copyWith(
        fetchPaymentHistoryForStudentStatus: FormzSubmissionStatus.success,
        individualStudentPaymentHistoryResponse: event.feesResponseForStudent,
        individualStudentPaymentHistoryResponseDatum:
            event.feesResponseForStudent.data,
        errorMessage: null));
  }

  void _fetchPaymentHistoryForStudentFailed(
      _FetchPaymentHistoryForStudentFailed event,
      Emitter<FeesPaymentState> emit) {
    emit(state.copyWith(
        fetchPaymentHistoryForStudentStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message));
  }

  void _markFeesPayment(
      _MarkFeesPayment event, Emitter<FeesPaymentState> emit) async {
    if (state.markFeesPaymentStatus == FormzSubmissionStatus.inProgress) return;

    emit(state.copyWith(
        markFeesPaymentStatus: FormzSubmissionStatus.inProgress));

    try {
      final response = await locator<FeesPaymentClient>().markFeesPaymentStatus(
        await getAuthorization(),
        await getSchoolID(),
        event.feesId,
        event.studentId,
        event.paymentStatus,
      );

      add(_MarkFeesPaymentSuccessful(response));
    } catch (error, trace) {
      logError(error, trace);

      if (error is DioError && error.response?.data['message'] != null) {
        add(_MarkFeesPaymentFailed(error.response?.data['message'] as String?));
      } else {
        add(const _MarkFeesPaymentFailed('An unexpected error occurred'));
      }
    }
  }

  void _markFeesPaymentSuccessful(
      _MarkFeesPaymentSuccessful event, Emitter<FeesPaymentState> emit) {
    emit(state.copyWith(
      markFeesPaymentStatus: FormzSubmissionStatus.success,
      errorMessage: null,
    ));
  }

  void _markFeesPaymentFailed(
      _MarkFeesPaymentFailed event, Emitter<FeesPaymentState> emit) {
    emit(state.copyWith(
      markFeesPaymentStatus: FormzSubmissionStatus.failure,
      errorMessage: event.message,
    ));
  }

  void _submitFeesIssue(
      _SubmitFeesIssue event, Emitter<FeesPaymentState> emit) async {
    if (state.submitFeesIssueStatus == FormzSubmissionStatus.inProgress) return;

    emit(state.copyWith(
        submitFeesIssueStatus: FormzSubmissionStatus.inProgress));

    try {
      final response = await locator<FeesPaymentClient>().markFeesPaymentStatus(
        await getAuthorization(),
        await getSchoolID(),
        event.feesId,
        event.studentId,
        event.paymentStatus,
      );

      add(_SubmitFeesIssueSuccessful(response));
    } catch (error, trace) {
      logError(error, trace);

      if (error is DioError && error.response?.data['message'] != null) {
        add(_SubmitFeesIssueFailed(error.response?.data['message'] as String?));
      } else {
        add(const _SubmitFeesIssueFailed('An unexpected error occurred'));
      }
    }
  }

  void _submitFeesIssueSuccessful(
      _SubmitFeesIssueSuccessful event, Emitter<FeesPaymentState> emit) {
    emit(state.copyWith(
      submitFeesIssueStatus: FormzSubmissionStatus.success,
      errorMessage: null,
    ));
  }

  void _submitFeesIssueFailed(
      _SubmitFeesIssueFailed event, Emitter<FeesPaymentState> emit) {
    emit(state.copyWith(
      submitFeesIssueStatus: FormzSubmissionStatus.failure,
      errorMessage: event.message,
    ));
  }

  void _fetchPayments(
      _FetchPayments event, Emitter<FeesPaymentState> emit) async {
    if (state.fetchPaymentStatus == FormzSubmissionStatus.inProgress) return;

    emit(state.copyWith(fetchPaymentStatus: FormzSubmissionStatus.inProgress));

    try {
      final payments = await locator<FeesPaymentClient>().fetchPayments(
          await getAuthorization(), await getSchoolID(), event.feesId);

      add(_FetchPaymentsSuccessful(payments));
    } catch (error, trace) {
      logError(error, trace);
      add(_FetchPaymentsFailed(error.toString()));
    }
  }

  void _fetchPaymentsSuccessful(
      _FetchPaymentsSuccessful event, Emitter<FeesPaymentState> emit) {
    emit(state.copyWith(
        fetchPaymentStatus: FormzSubmissionStatus.success,
        fetchPaymentsResponse: event.fetchPaymentsResponse,
        fetchPaymentsDatum: event.fetchPaymentsResponse.data,
        errorMessage: null));
  }

  void _fetchPaymentsFailed(
      _FetchPaymentsFailed event, Emitter<FeesPaymentState> emit) {
    emit(state.copyWith(
        fetchPaymentStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message));
  }

  void _errorMessage(_ErrorMessage event, Emitter<FeesPaymentState> emit) {
    emit(
      state.copyWith(errorMessage: state.errorMessage),
    );
  }
}
