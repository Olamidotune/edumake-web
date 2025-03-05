part of 'fees_payment_bloc.dart';

@freezed
class FeesPaymentEvent with _$FeesPaymentEvent {
  const factory FeesPaymentEvent() = _FeesPaymentEvent;

  const factory FeesPaymentEvent.feesTitleChanged(String title) =
      _FeesTitleChanged;

  const factory FeesPaymentEvent.feesTotalAmountChanged(String total) =
      _FeesTotalAmountChanged;

  const factory FeesPaymentEvent.feesDetailsChanged(String details) =
      _FeesDetailsChanged;

  const factory FeesPaymentEvent.breakDownTitleChanged(String breakDownTitle) =
      _BreakDownTitleChanged;

  const factory FeesPaymentEvent.breakDownFeesAmountChanged(
      String breakdownFeeAmount) = _BreakDownFeesAmountChanged;

  const factory FeesPaymentEvent.addFees(
      FeesPaymentRequestBody feesPaymentRequestBody) = _AddFees;

  const factory FeesPaymentEvent.addFeesSuccessful(SignupResponse response) =
      _AddFeesSuccessful;

  const factory FeesPaymentEvent.addFeesFailed([String? message]) =
      _AddFeesFailed;

  const factory FeesPaymentEvent.fetchFees(
      String? parentSchoolId, String? studentId) = _FetchFees;

  const factory FeesPaymentEvent.fetchFeesSuccessful(FeesResponse feesPayment) =
      _FetchFeesSuccessful;

  const factory FeesPaymentEvent.fetchFeesFailed(String message) =
      _FetchFeesFailed;

  const factory FeesPaymentEvent.fetchFeesById(String feeId) = _FetchFeesById;

  const factory FeesPaymentEvent.fetchFeesSuccessfulById(
      FetchFeesByIdResponse fetchFeesById) = _FetchFeesByIdSuccessful;

  const factory FeesPaymentEvent.fetchFeesByIdFailed(String message) =
      _FetchFeesByIdFailed;

  const factory FeesPaymentEvent.fetchPaymentHistoryForStudent(
      String studentId) = _FetchPaymentHistoryForStudent;

  const factory FeesPaymentEvent.fetchPaymentHistoryForStudentSuccessful(
          IndividualStudentPaymentHistoryResponse feesResponseForStudent) =
      _FetchPaymentHistoryForStudentSuccessful;

  const factory FeesPaymentEvent.fetchPaymentHistoryForStudentFailed(
      String message) = _FetchPaymentHistoryForStudentFailed;

////////////////////////////////////////////////////////
  const factory FeesPaymentEvent.markFeesPayment(
      String feesId, String studentId, String paymentStatus) = _MarkFeesPayment;

  const factory FeesPaymentEvent.markFeesPaymentSuccessful(
      SignupResponse response) = _MarkFeesPaymentSuccessful;

  const factory FeesPaymentEvent.markFeesPaymentFailed(String? message) =
      _MarkFeesPaymentFailed;

/////////////////////////////////////////////////////////////////////////

  const factory FeesPaymentEvent.submitFeesIssue(
      String feesId, String studentId, String paymentStatus) = _SubmitFeesIssue;

  const factory FeesPaymentEvent.submitFeesIssueSuccessful(
      SignupResponse response) = _SubmitFeesIssueSuccessful;

  const factory FeesPaymentEvent.submitFeesIssueFailed(String? message) =
      _SubmitFeesIssueFailed;

  const factory FeesPaymentEvent.errorMessage(String? message) = _ErrorMessage;
}
