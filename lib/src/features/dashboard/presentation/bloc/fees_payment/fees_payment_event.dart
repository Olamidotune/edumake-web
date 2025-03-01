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

  const factory FeesPaymentEvent.addFeesSuccessful(
      FeesPaymentResponse feesPaymentResponse) = _AddFeesSuccessful;

  const factory FeesPaymentEvent.addFeesFailed(String message) = _AddFeesFailed;

  const factory FeesPaymentEvent.errorMessage(String? message) = _ErrorMessage;
}
