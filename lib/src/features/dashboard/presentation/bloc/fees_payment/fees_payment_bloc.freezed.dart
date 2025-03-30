// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fees_payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeesPaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeesPaymentEventCopyWith<$Res> {
  factory $FeesPaymentEventCopyWith(
          FeesPaymentEvent value, $Res Function(FeesPaymentEvent) then) =
      _$FeesPaymentEventCopyWithImpl<$Res, FeesPaymentEvent>;
}

/// @nodoc
class _$FeesPaymentEventCopyWithImpl<$Res, $Val extends FeesPaymentEvent>
    implements $FeesPaymentEventCopyWith<$Res> {
  _$FeesPaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FeesPaymentEventImplCopyWith<$Res> {
  factory _$$FeesPaymentEventImplCopyWith(_$FeesPaymentEventImpl value,
          $Res Function(_$FeesPaymentEventImpl) then) =
      __$$FeesPaymentEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeesPaymentEventImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$FeesPaymentEventImpl>
    implements _$$FeesPaymentEventImplCopyWith<$Res> {
  __$$FeesPaymentEventImplCopyWithImpl(_$FeesPaymentEventImpl _value,
      $Res Function(_$FeesPaymentEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeesPaymentEventImpl implements _FeesPaymentEvent {
  const _$FeesPaymentEventImpl();

  @override
  String toString() {
    return 'FeesPaymentEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FeesPaymentEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
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
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _FeesPaymentEvent implements FeesPaymentEvent {
  const factory _FeesPaymentEvent() = _$FeesPaymentEventImpl;
}

/// @nodoc
abstract class _$$FeesTitleChangedImplCopyWith<$Res> {
  factory _$$FeesTitleChangedImplCopyWith(_$FeesTitleChangedImpl value,
          $Res Function(_$FeesTitleChangedImpl) then) =
      __$$FeesTitleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$FeesTitleChangedImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$FeesTitleChangedImpl>
    implements _$$FeesTitleChangedImplCopyWith<$Res> {
  __$$FeesTitleChangedImplCopyWithImpl(_$FeesTitleChangedImpl _value,
      $Res Function(_$FeesTitleChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$FeesTitleChangedImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FeesTitleChangedImpl implements _FeesTitleChanged {
  const _$FeesTitleChangedImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'FeesPaymentEvent.feesTitleChanged(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeesTitleChangedImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeesTitleChangedImplCopyWith<_$FeesTitleChangedImpl> get copyWith =>
      __$$FeesTitleChangedImplCopyWithImpl<_$FeesTitleChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return feesTitleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return feesTitleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (feesTitleChanged != null) {
      return feesTitleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return feesTitleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return feesTitleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (feesTitleChanged != null) {
      return feesTitleChanged(this);
    }
    return orElse();
  }
}

abstract class _FeesTitleChanged implements FeesPaymentEvent {
  const factory _FeesTitleChanged(final String title) = _$FeesTitleChangedImpl;

  String get title;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeesTitleChangedImplCopyWith<_$FeesTitleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeesTotalAmountChangedImplCopyWith<$Res> {
  factory _$$FeesTotalAmountChangedImplCopyWith(
          _$FeesTotalAmountChangedImpl value,
          $Res Function(_$FeesTotalAmountChangedImpl) then) =
      __$$FeesTotalAmountChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String total});
}

/// @nodoc
class __$$FeesTotalAmountChangedImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$FeesTotalAmountChangedImpl>
    implements _$$FeesTotalAmountChangedImplCopyWith<$Res> {
  __$$FeesTotalAmountChangedImplCopyWithImpl(
      _$FeesTotalAmountChangedImpl _value,
      $Res Function(_$FeesTotalAmountChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
  }) {
    return _then(_$FeesTotalAmountChangedImpl(
      null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FeesTotalAmountChangedImpl implements _FeesTotalAmountChanged {
  const _$FeesTotalAmountChangedImpl(this.total);

  @override
  final String total;

  @override
  String toString() {
    return 'FeesPaymentEvent.feesTotalAmountChanged(total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeesTotalAmountChangedImpl &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, total);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeesTotalAmountChangedImplCopyWith<_$FeesTotalAmountChangedImpl>
      get copyWith => __$$FeesTotalAmountChangedImplCopyWithImpl<
          _$FeesTotalAmountChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return feesTotalAmountChanged(total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return feesTotalAmountChanged?.call(total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (feesTotalAmountChanged != null) {
      return feesTotalAmountChanged(total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return feesTotalAmountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return feesTotalAmountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (feesTotalAmountChanged != null) {
      return feesTotalAmountChanged(this);
    }
    return orElse();
  }
}

abstract class _FeesTotalAmountChanged implements FeesPaymentEvent {
  const factory _FeesTotalAmountChanged(final String total) =
      _$FeesTotalAmountChangedImpl;

  String get total;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeesTotalAmountChangedImplCopyWith<_$FeesTotalAmountChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeesDetailsChangedImplCopyWith<$Res> {
  factory _$$FeesDetailsChangedImplCopyWith(_$FeesDetailsChangedImpl value,
          $Res Function(_$FeesDetailsChangedImpl) then) =
      __$$FeesDetailsChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String details});
}

/// @nodoc
class __$$FeesDetailsChangedImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$FeesDetailsChangedImpl>
    implements _$$FeesDetailsChangedImplCopyWith<$Res> {
  __$$FeesDetailsChangedImplCopyWithImpl(_$FeesDetailsChangedImpl _value,
      $Res Function(_$FeesDetailsChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
  }) {
    return _then(_$FeesDetailsChangedImpl(
      null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FeesDetailsChangedImpl implements _FeesDetailsChanged {
  const _$FeesDetailsChangedImpl(this.details);

  @override
  final String details;

  @override
  String toString() {
    return 'FeesPaymentEvent.feesDetailsChanged(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeesDetailsChangedImpl &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, details);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeesDetailsChangedImplCopyWith<_$FeesDetailsChangedImpl> get copyWith =>
      __$$FeesDetailsChangedImplCopyWithImpl<_$FeesDetailsChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return feesDetailsChanged(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return feesDetailsChanged?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (feesDetailsChanged != null) {
      return feesDetailsChanged(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return feesDetailsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return feesDetailsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (feesDetailsChanged != null) {
      return feesDetailsChanged(this);
    }
    return orElse();
  }
}

abstract class _FeesDetailsChanged implements FeesPaymentEvent {
  const factory _FeesDetailsChanged(final String details) =
      _$FeesDetailsChangedImpl;

  String get details;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeesDetailsChangedImplCopyWith<_$FeesDetailsChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BreakDownTitleChangedImplCopyWith<$Res> {
  factory _$$BreakDownTitleChangedImplCopyWith(
          _$BreakDownTitleChangedImpl value,
          $Res Function(_$BreakDownTitleChangedImpl) then) =
      __$$BreakDownTitleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String breakDownTitle});
}

/// @nodoc
class __$$BreakDownTitleChangedImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$BreakDownTitleChangedImpl>
    implements _$$BreakDownTitleChangedImplCopyWith<$Res> {
  __$$BreakDownTitleChangedImplCopyWithImpl(_$BreakDownTitleChangedImpl _value,
      $Res Function(_$BreakDownTitleChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breakDownTitle = null,
  }) {
    return _then(_$BreakDownTitleChangedImpl(
      null == breakDownTitle
          ? _value.breakDownTitle
          : breakDownTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BreakDownTitleChangedImpl implements _BreakDownTitleChanged {
  const _$BreakDownTitleChangedImpl(this.breakDownTitle);

  @override
  final String breakDownTitle;

  @override
  String toString() {
    return 'FeesPaymentEvent.breakDownTitleChanged(breakDownTitle: $breakDownTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreakDownTitleChangedImpl &&
            (identical(other.breakDownTitle, breakDownTitle) ||
                other.breakDownTitle == breakDownTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, breakDownTitle);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreakDownTitleChangedImplCopyWith<_$BreakDownTitleChangedImpl>
      get copyWith => __$$BreakDownTitleChangedImplCopyWithImpl<
          _$BreakDownTitleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return breakDownTitleChanged(breakDownTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return breakDownTitleChanged?.call(breakDownTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (breakDownTitleChanged != null) {
      return breakDownTitleChanged(breakDownTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return breakDownTitleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return breakDownTitleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (breakDownTitleChanged != null) {
      return breakDownTitleChanged(this);
    }
    return orElse();
  }
}

abstract class _BreakDownTitleChanged implements FeesPaymentEvent {
  const factory _BreakDownTitleChanged(final String breakDownTitle) =
      _$BreakDownTitleChangedImpl;

  String get breakDownTitle;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreakDownTitleChangedImplCopyWith<_$BreakDownTitleChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BreakDownFeesAmountChangedImplCopyWith<$Res> {
  factory _$$BreakDownFeesAmountChangedImplCopyWith(
          _$BreakDownFeesAmountChangedImpl value,
          $Res Function(_$BreakDownFeesAmountChangedImpl) then) =
      __$$BreakDownFeesAmountChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String breakdownFeeAmount});
}

/// @nodoc
class __$$BreakDownFeesAmountChangedImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res,
        _$BreakDownFeesAmountChangedImpl>
    implements _$$BreakDownFeesAmountChangedImplCopyWith<$Res> {
  __$$BreakDownFeesAmountChangedImplCopyWithImpl(
      _$BreakDownFeesAmountChangedImpl _value,
      $Res Function(_$BreakDownFeesAmountChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breakdownFeeAmount = null,
  }) {
    return _then(_$BreakDownFeesAmountChangedImpl(
      null == breakdownFeeAmount
          ? _value.breakdownFeeAmount
          : breakdownFeeAmount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BreakDownFeesAmountChangedImpl implements _BreakDownFeesAmountChanged {
  const _$BreakDownFeesAmountChangedImpl(this.breakdownFeeAmount);

  @override
  final String breakdownFeeAmount;

  @override
  String toString() {
    return 'FeesPaymentEvent.breakDownFeesAmountChanged(breakdownFeeAmount: $breakdownFeeAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreakDownFeesAmountChangedImpl &&
            (identical(other.breakdownFeeAmount, breakdownFeeAmount) ||
                other.breakdownFeeAmount == breakdownFeeAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, breakdownFeeAmount);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreakDownFeesAmountChangedImplCopyWith<_$BreakDownFeesAmountChangedImpl>
      get copyWith => __$$BreakDownFeesAmountChangedImplCopyWithImpl<
          _$BreakDownFeesAmountChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return breakDownFeesAmountChanged(breakdownFeeAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return breakDownFeesAmountChanged?.call(breakdownFeeAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (breakDownFeesAmountChanged != null) {
      return breakDownFeesAmountChanged(breakdownFeeAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return breakDownFeesAmountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return breakDownFeesAmountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (breakDownFeesAmountChanged != null) {
      return breakDownFeesAmountChanged(this);
    }
    return orElse();
  }
}

abstract class _BreakDownFeesAmountChanged implements FeesPaymentEvent {
  const factory _BreakDownFeesAmountChanged(final String breakdownFeeAmount) =
      _$BreakDownFeesAmountChangedImpl;

  String get breakdownFeeAmount;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreakDownFeesAmountChangedImplCopyWith<_$BreakDownFeesAmountChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFeesImplCopyWith<$Res> {
  factory _$$AddFeesImplCopyWith(
          _$AddFeesImpl value, $Res Function(_$AddFeesImpl) then) =
      __$$AddFeesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FeesPaymentRequestBody feesPaymentRequestBody});
}

/// @nodoc
class __$$AddFeesImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$AddFeesImpl>
    implements _$$AddFeesImplCopyWith<$Res> {
  __$$AddFeesImplCopyWithImpl(
      _$AddFeesImpl _value, $Res Function(_$AddFeesImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feesPaymentRequestBody = null,
  }) {
    return _then(_$AddFeesImpl(
      null == feesPaymentRequestBody
          ? _value.feesPaymentRequestBody
          : feesPaymentRequestBody // ignore: cast_nullable_to_non_nullable
              as FeesPaymentRequestBody,
    ));
  }
}

/// @nodoc

class _$AddFeesImpl implements _AddFees {
  const _$AddFeesImpl(this.feesPaymentRequestBody);

  @override
  final FeesPaymentRequestBody feesPaymentRequestBody;

  @override
  String toString() {
    return 'FeesPaymentEvent.addFees(feesPaymentRequestBody: $feesPaymentRequestBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFeesImpl &&
            (identical(other.feesPaymentRequestBody, feesPaymentRequestBody) ||
                other.feesPaymentRequestBody == feesPaymentRequestBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feesPaymentRequestBody);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFeesImplCopyWith<_$AddFeesImpl> get copyWith =>
      __$$AddFeesImplCopyWithImpl<_$AddFeesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return addFees(feesPaymentRequestBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return addFees?.call(feesPaymentRequestBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (addFees != null) {
      return addFees(feesPaymentRequestBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return addFees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return addFees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (addFees != null) {
      return addFees(this);
    }
    return orElse();
  }
}

abstract class _AddFees implements FeesPaymentEvent {
  const factory _AddFees(final FeesPaymentRequestBody feesPaymentRequestBody) =
      _$AddFeesImpl;

  FeesPaymentRequestBody get feesPaymentRequestBody;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFeesImplCopyWith<_$AddFeesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFeesSuccessfulImplCopyWith<$Res> {
  factory _$$AddFeesSuccessfulImplCopyWith(_$AddFeesSuccessfulImpl value,
          $Res Function(_$AddFeesSuccessfulImpl) then) =
      __$$AddFeesSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignupResponse response});
}

/// @nodoc
class __$$AddFeesSuccessfulImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$AddFeesSuccessfulImpl>
    implements _$$AddFeesSuccessfulImplCopyWith<$Res> {
  __$$AddFeesSuccessfulImplCopyWithImpl(_$AddFeesSuccessfulImpl _value,
      $Res Function(_$AddFeesSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$AddFeesSuccessfulImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SignupResponse,
    ));
  }
}

/// @nodoc

class _$AddFeesSuccessfulImpl implements _AddFeesSuccessful {
  const _$AddFeesSuccessfulImpl(this.response);

  @override
  final SignupResponse response;

  @override
  String toString() {
    return 'FeesPaymentEvent.addFeesSuccessful(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFeesSuccessfulImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFeesSuccessfulImplCopyWith<_$AddFeesSuccessfulImpl> get copyWith =>
      __$$AddFeesSuccessfulImplCopyWithImpl<_$AddFeesSuccessfulImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return addFeesSuccessful(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return addFeesSuccessful?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (addFeesSuccessful != null) {
      return addFeesSuccessful(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return addFeesSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return addFeesSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (addFeesSuccessful != null) {
      return addFeesSuccessful(this);
    }
    return orElse();
  }
}

abstract class _AddFeesSuccessful implements FeesPaymentEvent {
  const factory _AddFeesSuccessful(final SignupResponse response) =
      _$AddFeesSuccessfulImpl;

  SignupResponse get response;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFeesSuccessfulImplCopyWith<_$AddFeesSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFeesFailedImplCopyWith<$Res> {
  factory _$$AddFeesFailedImplCopyWith(
          _$AddFeesFailedImpl value, $Res Function(_$AddFeesFailedImpl) then) =
      __$$AddFeesFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$AddFeesFailedImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$AddFeesFailedImpl>
    implements _$$AddFeesFailedImplCopyWith<$Res> {
  __$$AddFeesFailedImplCopyWithImpl(
      _$AddFeesFailedImpl _value, $Res Function(_$AddFeesFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AddFeesFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddFeesFailedImpl implements _AddFeesFailed {
  const _$AddFeesFailedImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'FeesPaymentEvent.addFeesFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFeesFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFeesFailedImplCopyWith<_$AddFeesFailedImpl> get copyWith =>
      __$$AddFeesFailedImplCopyWithImpl<_$AddFeesFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return addFeesFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return addFeesFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (addFeesFailed != null) {
      return addFeesFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return addFeesFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return addFeesFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (addFeesFailed != null) {
      return addFeesFailed(this);
    }
    return orElse();
  }
}

abstract class _AddFeesFailed implements FeesPaymentEvent {
  const factory _AddFeesFailed([final String? message]) = _$AddFeesFailedImpl;

  String? get message;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFeesFailedImplCopyWith<_$AddFeesFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchFeesImplCopyWith<$Res> {
  factory _$$FetchFeesImplCopyWith(
          _$FetchFeesImpl value, $Res Function(_$FetchFeesImpl) then) =
      __$$FetchFeesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? parentSchoolId, String? studentId});
}

/// @nodoc
class __$$FetchFeesImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$FetchFeesImpl>
    implements _$$FetchFeesImplCopyWith<$Res> {
  __$$FetchFeesImplCopyWithImpl(
      _$FetchFeesImpl _value, $Res Function(_$FetchFeesImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentSchoolId = freezed,
    Object? studentId = freezed,
  }) {
    return _then(_$FetchFeesImpl(
      freezed == parentSchoolId
          ? _value.parentSchoolId
          : parentSchoolId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchFeesImpl implements _FetchFees {
  const _$FetchFeesImpl(this.parentSchoolId, this.studentId);

  @override
  final String? parentSchoolId;
  @override
  final String? studentId;

  @override
  String toString() {
    return 'FeesPaymentEvent.fetchFees(parentSchoolId: $parentSchoolId, studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFeesImpl &&
            (identical(other.parentSchoolId, parentSchoolId) ||
                other.parentSchoolId == parentSchoolId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parentSchoolId, studentId);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFeesImplCopyWith<_$FetchFeesImpl> get copyWith =>
      __$$FetchFeesImplCopyWithImpl<_$FetchFeesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchFees(parentSchoolId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchFees?.call(parentSchoolId, studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchFees != null) {
      return fetchFees(parentSchoolId, studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchFees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchFees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchFees != null) {
      return fetchFees(this);
    }
    return orElse();
  }
}

abstract class _FetchFees implements FeesPaymentEvent {
  const factory _FetchFees(
      final String? parentSchoolId, final String? studentId) = _$FetchFeesImpl;

  String? get parentSchoolId;
  String? get studentId;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchFeesImplCopyWith<_$FetchFeesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchFeesSuccessfulImplCopyWith<$Res> {
  factory _$$FetchFeesSuccessfulImplCopyWith(_$FetchFeesSuccessfulImpl value,
          $Res Function(_$FetchFeesSuccessfulImpl) then) =
      __$$FetchFeesSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FeesResponse feesPayment});
}

/// @nodoc
class __$$FetchFeesSuccessfulImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$FetchFeesSuccessfulImpl>
    implements _$$FetchFeesSuccessfulImplCopyWith<$Res> {
  __$$FetchFeesSuccessfulImplCopyWithImpl(_$FetchFeesSuccessfulImpl _value,
      $Res Function(_$FetchFeesSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feesPayment = null,
  }) {
    return _then(_$FetchFeesSuccessfulImpl(
      null == feesPayment
          ? _value.feesPayment
          : feesPayment // ignore: cast_nullable_to_non_nullable
              as FeesResponse,
    ));
  }
}

/// @nodoc

class _$FetchFeesSuccessfulImpl implements _FetchFeesSuccessful {
  const _$FetchFeesSuccessfulImpl(this.feesPayment);

  @override
  final FeesResponse feesPayment;

  @override
  String toString() {
    return 'FeesPaymentEvent.fetchFeesSuccessful(feesPayment: $feesPayment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFeesSuccessfulImpl &&
            (identical(other.feesPayment, feesPayment) ||
                other.feesPayment == feesPayment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feesPayment);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFeesSuccessfulImplCopyWith<_$FetchFeesSuccessfulImpl> get copyWith =>
      __$$FetchFeesSuccessfulImplCopyWithImpl<_$FetchFeesSuccessfulImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchFeesSuccessful(feesPayment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchFeesSuccessful?.call(feesPayment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchFeesSuccessful != null) {
      return fetchFeesSuccessful(feesPayment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchFeesSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchFeesSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchFeesSuccessful != null) {
      return fetchFeesSuccessful(this);
    }
    return orElse();
  }
}

abstract class _FetchFeesSuccessful implements FeesPaymentEvent {
  const factory _FetchFeesSuccessful(final FeesResponse feesPayment) =
      _$FetchFeesSuccessfulImpl;

  FeesResponse get feesPayment;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchFeesSuccessfulImplCopyWith<_$FetchFeesSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchFeesFailedImplCopyWith<$Res> {
  factory _$$FetchFeesFailedImplCopyWith(_$FetchFeesFailedImpl value,
          $Res Function(_$FetchFeesFailedImpl) then) =
      __$$FetchFeesFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FetchFeesFailedImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$FetchFeesFailedImpl>
    implements _$$FetchFeesFailedImplCopyWith<$Res> {
  __$$FetchFeesFailedImplCopyWithImpl(
      _$FetchFeesFailedImpl _value, $Res Function(_$FetchFeesFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FetchFeesFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchFeesFailedImpl implements _FetchFeesFailed {
  const _$FetchFeesFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FeesPaymentEvent.fetchFeesFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFeesFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFeesFailedImplCopyWith<_$FetchFeesFailedImpl> get copyWith =>
      __$$FetchFeesFailedImplCopyWithImpl<_$FetchFeesFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchFeesFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchFeesFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchFeesFailed != null) {
      return fetchFeesFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchFeesFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchFeesFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchFeesFailed != null) {
      return fetchFeesFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchFeesFailed implements FeesPaymentEvent {
  const factory _FetchFeesFailed(final String message) = _$FetchFeesFailedImpl;

  String get message;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchFeesFailedImplCopyWith<_$FetchFeesFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchFeesByIdImplCopyWith<$Res> {
  factory _$$FetchFeesByIdImplCopyWith(
          _$FetchFeesByIdImpl value, $Res Function(_$FetchFeesByIdImpl) then) =
      __$$FetchFeesByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String feeId});
}

/// @nodoc
class __$$FetchFeesByIdImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$FetchFeesByIdImpl>
    implements _$$FetchFeesByIdImplCopyWith<$Res> {
  __$$FetchFeesByIdImplCopyWithImpl(
      _$FetchFeesByIdImpl _value, $Res Function(_$FetchFeesByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeId = null,
  }) {
    return _then(_$FetchFeesByIdImpl(
      null == feeId
          ? _value.feeId
          : feeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchFeesByIdImpl implements _FetchFeesById {
  const _$FetchFeesByIdImpl(this.feeId);

  @override
  final String feeId;

  @override
  String toString() {
    return 'FeesPaymentEvent.fetchFeesById(feeId: $feeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFeesByIdImpl &&
            (identical(other.feeId, feeId) || other.feeId == feeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feeId);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFeesByIdImplCopyWith<_$FetchFeesByIdImpl> get copyWith =>
      __$$FetchFeesByIdImplCopyWithImpl<_$FetchFeesByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchFeesById(feeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchFeesById?.call(feeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchFeesById != null) {
      return fetchFeesById(feeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchFeesById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchFeesById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchFeesById != null) {
      return fetchFeesById(this);
    }
    return orElse();
  }
}

abstract class _FetchFeesById implements FeesPaymentEvent {
  const factory _FetchFeesById(final String feeId) = _$FetchFeesByIdImpl;

  String get feeId;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchFeesByIdImplCopyWith<_$FetchFeesByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchFeesByIdSuccessfulImplCopyWith<$Res> {
  factory _$$FetchFeesByIdSuccessfulImplCopyWith(
          _$FetchFeesByIdSuccessfulImpl value,
          $Res Function(_$FetchFeesByIdSuccessfulImpl) then) =
      __$$FetchFeesByIdSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FetchFeesByIdResponse fetchFeesById});
}

/// @nodoc
class __$$FetchFeesByIdSuccessfulImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$FetchFeesByIdSuccessfulImpl>
    implements _$$FetchFeesByIdSuccessfulImplCopyWith<$Res> {
  __$$FetchFeesByIdSuccessfulImplCopyWithImpl(
      _$FetchFeesByIdSuccessfulImpl _value,
      $Res Function(_$FetchFeesByIdSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchFeesById = null,
  }) {
    return _then(_$FetchFeesByIdSuccessfulImpl(
      null == fetchFeesById
          ? _value.fetchFeesById
          : fetchFeesById // ignore: cast_nullable_to_non_nullable
              as FetchFeesByIdResponse,
    ));
  }
}

/// @nodoc

class _$FetchFeesByIdSuccessfulImpl implements _FetchFeesByIdSuccessful {
  const _$FetchFeesByIdSuccessfulImpl(this.fetchFeesById);

  @override
  final FetchFeesByIdResponse fetchFeesById;

  @override
  String toString() {
    return 'FeesPaymentEvent.fetchFeesSuccessfulById(fetchFeesById: $fetchFeesById)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFeesByIdSuccessfulImpl &&
            (identical(other.fetchFeesById, fetchFeesById) ||
                other.fetchFeesById == fetchFeesById));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchFeesById);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFeesByIdSuccessfulImplCopyWith<_$FetchFeesByIdSuccessfulImpl>
      get copyWith => __$$FetchFeesByIdSuccessfulImplCopyWithImpl<
          _$FetchFeesByIdSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchFeesSuccessfulById(this.fetchFeesById);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchFeesSuccessfulById?.call(this.fetchFeesById);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchFeesSuccessfulById != null) {
      return fetchFeesSuccessfulById(this.fetchFeesById);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchFeesSuccessfulById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchFeesSuccessfulById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchFeesSuccessfulById != null) {
      return fetchFeesSuccessfulById(this);
    }
    return orElse();
  }
}

abstract class _FetchFeesByIdSuccessful implements FeesPaymentEvent {
  const factory _FetchFeesByIdSuccessful(
          final FetchFeesByIdResponse fetchFeesById) =
      _$FetchFeesByIdSuccessfulImpl;

  FetchFeesByIdResponse get fetchFeesById;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchFeesByIdSuccessfulImplCopyWith<_$FetchFeesByIdSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchFeesByIdFailedImplCopyWith<$Res> {
  factory _$$FetchFeesByIdFailedImplCopyWith(_$FetchFeesByIdFailedImpl value,
          $Res Function(_$FetchFeesByIdFailedImpl) then) =
      __$$FetchFeesByIdFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FetchFeesByIdFailedImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$FetchFeesByIdFailedImpl>
    implements _$$FetchFeesByIdFailedImplCopyWith<$Res> {
  __$$FetchFeesByIdFailedImplCopyWithImpl(_$FetchFeesByIdFailedImpl _value,
      $Res Function(_$FetchFeesByIdFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FetchFeesByIdFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchFeesByIdFailedImpl implements _FetchFeesByIdFailed {
  const _$FetchFeesByIdFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FeesPaymentEvent.fetchFeesByIdFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFeesByIdFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFeesByIdFailedImplCopyWith<_$FetchFeesByIdFailedImpl> get copyWith =>
      __$$FetchFeesByIdFailedImplCopyWithImpl<_$FetchFeesByIdFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchFeesByIdFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchFeesByIdFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchFeesByIdFailed != null) {
      return fetchFeesByIdFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchFeesByIdFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchFeesByIdFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchFeesByIdFailed != null) {
      return fetchFeesByIdFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchFeesByIdFailed implements FeesPaymentEvent {
  const factory _FetchFeesByIdFailed(final String message) =
      _$FetchFeesByIdFailedImpl;

  String get message;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchFeesByIdFailedImplCopyWith<_$FetchFeesByIdFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchPaymentHistoryForStudentImplCopyWith<$Res> {
  factory _$$FetchPaymentHistoryForStudentImplCopyWith(
          _$FetchPaymentHistoryForStudentImpl value,
          $Res Function(_$FetchPaymentHistoryForStudentImpl) then) =
      __$$FetchPaymentHistoryForStudentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String studentId});
}

/// @nodoc
class __$$FetchPaymentHistoryForStudentImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res,
        _$FetchPaymentHistoryForStudentImpl>
    implements _$$FetchPaymentHistoryForStudentImplCopyWith<$Res> {
  __$$FetchPaymentHistoryForStudentImplCopyWithImpl(
      _$FetchPaymentHistoryForStudentImpl _value,
      $Res Function(_$FetchPaymentHistoryForStudentImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
  }) {
    return _then(_$FetchPaymentHistoryForStudentImpl(
      null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchPaymentHistoryForStudentImpl
    implements _FetchPaymentHistoryForStudent {
  const _$FetchPaymentHistoryForStudentImpl(this.studentId);

  @override
  final String studentId;

  @override
  String toString() {
    return 'FeesPaymentEvent.fetchPaymentHistoryForStudent(studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPaymentHistoryForStudentImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentId);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPaymentHistoryForStudentImplCopyWith<
          _$FetchPaymentHistoryForStudentImpl>
      get copyWith => __$$FetchPaymentHistoryForStudentImplCopyWithImpl<
          _$FetchPaymentHistoryForStudentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchPaymentHistoryForStudent(studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchPaymentHistoryForStudent?.call(studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchPaymentHistoryForStudent != null) {
      return fetchPaymentHistoryForStudent(studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchPaymentHistoryForStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchPaymentHistoryForStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchPaymentHistoryForStudent != null) {
      return fetchPaymentHistoryForStudent(this);
    }
    return orElse();
  }
}

abstract class _FetchPaymentHistoryForStudent implements FeesPaymentEvent {
  const factory _FetchPaymentHistoryForStudent(final String studentId) =
      _$FetchPaymentHistoryForStudentImpl;

  String get studentId;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchPaymentHistoryForStudentImplCopyWith<
          _$FetchPaymentHistoryForStudentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchPaymentHistoryForStudentSuccessfulImplCopyWith<$Res> {
  factory _$$FetchPaymentHistoryForStudentSuccessfulImplCopyWith(
          _$FetchPaymentHistoryForStudentSuccessfulImpl value,
          $Res Function(_$FetchPaymentHistoryForStudentSuccessfulImpl) then) =
      __$$FetchPaymentHistoryForStudentSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({IndividualStudentPaymentHistoryResponse feesResponseForStudent});
}

/// @nodoc
class __$$FetchPaymentHistoryForStudentSuccessfulImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res,
        _$FetchPaymentHistoryForStudentSuccessfulImpl>
    implements _$$FetchPaymentHistoryForStudentSuccessfulImplCopyWith<$Res> {
  __$$FetchPaymentHistoryForStudentSuccessfulImplCopyWithImpl(
      _$FetchPaymentHistoryForStudentSuccessfulImpl _value,
      $Res Function(_$FetchPaymentHistoryForStudentSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feesResponseForStudent = null,
  }) {
    return _then(_$FetchPaymentHistoryForStudentSuccessfulImpl(
      null == feesResponseForStudent
          ? _value.feesResponseForStudent
          : feesResponseForStudent // ignore: cast_nullable_to_non_nullable
              as IndividualStudentPaymentHistoryResponse,
    ));
  }
}

/// @nodoc

class _$FetchPaymentHistoryForStudentSuccessfulImpl
    implements _FetchPaymentHistoryForStudentSuccessful {
  const _$FetchPaymentHistoryForStudentSuccessfulImpl(
      this.feesResponseForStudent);

  @override
  final IndividualStudentPaymentHistoryResponse feesResponseForStudent;

  @override
  String toString() {
    return 'FeesPaymentEvent.fetchPaymentHistoryForStudentSuccessful(feesResponseForStudent: $feesResponseForStudent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPaymentHistoryForStudentSuccessfulImpl &&
            (identical(other.feesResponseForStudent, feesResponseForStudent) ||
                other.feesResponseForStudent == feesResponseForStudent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feesResponseForStudent);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPaymentHistoryForStudentSuccessfulImplCopyWith<
          _$FetchPaymentHistoryForStudentSuccessfulImpl>
      get copyWith =>
          __$$FetchPaymentHistoryForStudentSuccessfulImplCopyWithImpl<
              _$FetchPaymentHistoryForStudentSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchPaymentHistoryForStudentSuccessful(feesResponseForStudent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchPaymentHistoryForStudentSuccessful
        ?.call(feesResponseForStudent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchPaymentHistoryForStudentSuccessful != null) {
      return fetchPaymentHistoryForStudentSuccessful(feesResponseForStudent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchPaymentHistoryForStudentSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchPaymentHistoryForStudentSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchPaymentHistoryForStudentSuccessful != null) {
      return fetchPaymentHistoryForStudentSuccessful(this);
    }
    return orElse();
  }
}

abstract class _FetchPaymentHistoryForStudentSuccessful
    implements FeesPaymentEvent {
  const factory _FetchPaymentHistoryForStudentSuccessful(
          final IndividualStudentPaymentHistoryResponse
              feesResponseForStudent) =
      _$FetchPaymentHistoryForStudentSuccessfulImpl;

  IndividualStudentPaymentHistoryResponse get feesResponseForStudent;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchPaymentHistoryForStudentSuccessfulImplCopyWith<
          _$FetchPaymentHistoryForStudentSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchPaymentHistoryForStudentFailedImplCopyWith<$Res> {
  factory _$$FetchPaymentHistoryForStudentFailedImplCopyWith(
          _$FetchPaymentHistoryForStudentFailedImpl value,
          $Res Function(_$FetchPaymentHistoryForStudentFailedImpl) then) =
      __$$FetchPaymentHistoryForStudentFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FetchPaymentHistoryForStudentFailedImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res,
        _$FetchPaymentHistoryForStudentFailedImpl>
    implements _$$FetchPaymentHistoryForStudentFailedImplCopyWith<$Res> {
  __$$FetchPaymentHistoryForStudentFailedImplCopyWithImpl(
      _$FetchPaymentHistoryForStudentFailedImpl _value,
      $Res Function(_$FetchPaymentHistoryForStudentFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FetchPaymentHistoryForStudentFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchPaymentHistoryForStudentFailedImpl
    implements _FetchPaymentHistoryForStudentFailed {
  const _$FetchPaymentHistoryForStudentFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FeesPaymentEvent.fetchPaymentHistoryForStudentFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPaymentHistoryForStudentFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPaymentHistoryForStudentFailedImplCopyWith<
          _$FetchPaymentHistoryForStudentFailedImpl>
      get copyWith => __$$FetchPaymentHistoryForStudentFailedImplCopyWithImpl<
          _$FetchPaymentHistoryForStudentFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchPaymentHistoryForStudentFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchPaymentHistoryForStudentFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchPaymentHistoryForStudentFailed != null) {
      return fetchPaymentHistoryForStudentFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchPaymentHistoryForStudentFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchPaymentHistoryForStudentFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchPaymentHistoryForStudentFailed != null) {
      return fetchPaymentHistoryForStudentFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchPaymentHistoryForStudentFailed
    implements FeesPaymentEvent {
  const factory _FetchPaymentHistoryForStudentFailed(final String message) =
      _$FetchPaymentHistoryForStudentFailedImpl;

  String get message;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchPaymentHistoryForStudentFailedImplCopyWith<
          _$FetchPaymentHistoryForStudentFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkFeesPaymentImplCopyWith<$Res> {
  factory _$$MarkFeesPaymentImplCopyWith(_$MarkFeesPaymentImpl value,
          $Res Function(_$MarkFeesPaymentImpl) then) =
      __$$MarkFeesPaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String feesId, String studentId, String paymentStatus});
}

/// @nodoc
class __$$MarkFeesPaymentImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$MarkFeesPaymentImpl>
    implements _$$MarkFeesPaymentImplCopyWith<$Res> {
  __$$MarkFeesPaymentImplCopyWithImpl(
      _$MarkFeesPaymentImpl _value, $Res Function(_$MarkFeesPaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feesId = null,
    Object? studentId = null,
    Object? paymentStatus = null,
  }) {
    return _then(_$MarkFeesPaymentImpl(
      null == feesId
          ? _value.feesId
          : feesId // ignore: cast_nullable_to_non_nullable
              as String,
      null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkFeesPaymentImpl implements _MarkFeesPayment {
  const _$MarkFeesPaymentImpl(this.feesId, this.studentId, this.paymentStatus);

  @override
  final String feesId;
  @override
  final String studentId;
  @override
  final String paymentStatus;

  @override
  String toString() {
    return 'FeesPaymentEvent.markFeesPayment(feesId: $feesId, studentId: $studentId, paymentStatus: $paymentStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkFeesPaymentImpl &&
            (identical(other.feesId, feesId) || other.feesId == feesId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, feesId, studentId, paymentStatus);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkFeesPaymentImplCopyWith<_$MarkFeesPaymentImpl> get copyWith =>
      __$$MarkFeesPaymentImplCopyWithImpl<_$MarkFeesPaymentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return markFeesPayment(feesId, studentId, paymentStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return markFeesPayment?.call(feesId, studentId, paymentStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (markFeesPayment != null) {
      return markFeesPayment(feesId, studentId, paymentStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return markFeesPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return markFeesPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (markFeesPayment != null) {
      return markFeesPayment(this);
    }
    return orElse();
  }
}

abstract class _MarkFeesPayment implements FeesPaymentEvent {
  const factory _MarkFeesPayment(final String feesId, final String studentId,
      final String paymentStatus) = _$MarkFeesPaymentImpl;

  String get feesId;
  String get studentId;
  String get paymentStatus;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkFeesPaymentImplCopyWith<_$MarkFeesPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkFeesPaymentSuccessfulImplCopyWith<$Res> {
  factory _$$MarkFeesPaymentSuccessfulImplCopyWith(
          _$MarkFeesPaymentSuccessfulImpl value,
          $Res Function(_$MarkFeesPaymentSuccessfulImpl) then) =
      __$$MarkFeesPaymentSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignupResponse response});
}

/// @nodoc
class __$$MarkFeesPaymentSuccessfulImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res,
        _$MarkFeesPaymentSuccessfulImpl>
    implements _$$MarkFeesPaymentSuccessfulImplCopyWith<$Res> {
  __$$MarkFeesPaymentSuccessfulImplCopyWithImpl(
      _$MarkFeesPaymentSuccessfulImpl _value,
      $Res Function(_$MarkFeesPaymentSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$MarkFeesPaymentSuccessfulImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SignupResponse,
    ));
  }
}

/// @nodoc

class _$MarkFeesPaymentSuccessfulImpl implements _MarkFeesPaymentSuccessful {
  const _$MarkFeesPaymentSuccessfulImpl(this.response);

  @override
  final SignupResponse response;

  @override
  String toString() {
    return 'FeesPaymentEvent.markFeesPaymentSuccessful(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkFeesPaymentSuccessfulImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkFeesPaymentSuccessfulImplCopyWith<_$MarkFeesPaymentSuccessfulImpl>
      get copyWith => __$$MarkFeesPaymentSuccessfulImplCopyWithImpl<
          _$MarkFeesPaymentSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return markFeesPaymentSuccessful(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return markFeesPaymentSuccessful?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (markFeesPaymentSuccessful != null) {
      return markFeesPaymentSuccessful(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return markFeesPaymentSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return markFeesPaymentSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (markFeesPaymentSuccessful != null) {
      return markFeesPaymentSuccessful(this);
    }
    return orElse();
  }
}

abstract class _MarkFeesPaymentSuccessful implements FeesPaymentEvent {
  const factory _MarkFeesPaymentSuccessful(final SignupResponse response) =
      _$MarkFeesPaymentSuccessfulImpl;

  SignupResponse get response;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkFeesPaymentSuccessfulImplCopyWith<_$MarkFeesPaymentSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkFeesPaymentFailedImplCopyWith<$Res> {
  factory _$$MarkFeesPaymentFailedImplCopyWith(
          _$MarkFeesPaymentFailedImpl value,
          $Res Function(_$MarkFeesPaymentFailedImpl) then) =
      __$$MarkFeesPaymentFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$MarkFeesPaymentFailedImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$MarkFeesPaymentFailedImpl>
    implements _$$MarkFeesPaymentFailedImplCopyWith<$Res> {
  __$$MarkFeesPaymentFailedImplCopyWithImpl(_$MarkFeesPaymentFailedImpl _value,
      $Res Function(_$MarkFeesPaymentFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$MarkFeesPaymentFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MarkFeesPaymentFailedImpl implements _MarkFeesPaymentFailed {
  const _$MarkFeesPaymentFailedImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'FeesPaymentEvent.markFeesPaymentFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkFeesPaymentFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkFeesPaymentFailedImplCopyWith<_$MarkFeesPaymentFailedImpl>
      get copyWith => __$$MarkFeesPaymentFailedImplCopyWithImpl<
          _$MarkFeesPaymentFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return markFeesPaymentFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return markFeesPaymentFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (markFeesPaymentFailed != null) {
      return markFeesPaymentFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return markFeesPaymentFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return markFeesPaymentFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (markFeesPaymentFailed != null) {
      return markFeesPaymentFailed(this);
    }
    return orElse();
  }
}

abstract class _MarkFeesPaymentFailed implements FeesPaymentEvent {
  const factory _MarkFeesPaymentFailed(final String? message) =
      _$MarkFeesPaymentFailedImpl;

  String? get message;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkFeesPaymentFailedImplCopyWith<_$MarkFeesPaymentFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitFeesIssueImplCopyWith<$Res> {
  factory _$$SubmitFeesIssueImplCopyWith(_$SubmitFeesIssueImpl value,
          $Res Function(_$SubmitFeesIssueImpl) then) =
      __$$SubmitFeesIssueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String feesId, String studentId, String paymentStatus});
}

/// @nodoc
class __$$SubmitFeesIssueImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$SubmitFeesIssueImpl>
    implements _$$SubmitFeesIssueImplCopyWith<$Res> {
  __$$SubmitFeesIssueImplCopyWithImpl(
      _$SubmitFeesIssueImpl _value, $Res Function(_$SubmitFeesIssueImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feesId = null,
    Object? studentId = null,
    Object? paymentStatus = null,
  }) {
    return _then(_$SubmitFeesIssueImpl(
      null == feesId
          ? _value.feesId
          : feesId // ignore: cast_nullable_to_non_nullable
              as String,
      null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubmitFeesIssueImpl implements _SubmitFeesIssue {
  const _$SubmitFeesIssueImpl(this.feesId, this.studentId, this.paymentStatus);

  @override
  final String feesId;
  @override
  final String studentId;
  @override
  final String paymentStatus;

  @override
  String toString() {
    return 'FeesPaymentEvent.submitFeesIssue(feesId: $feesId, studentId: $studentId, paymentStatus: $paymentStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFeesIssueImpl &&
            (identical(other.feesId, feesId) || other.feesId == feesId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, feesId, studentId, paymentStatus);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFeesIssueImplCopyWith<_$SubmitFeesIssueImpl> get copyWith =>
      __$$SubmitFeesIssueImplCopyWithImpl<_$SubmitFeesIssueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return submitFeesIssue(feesId, studentId, paymentStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return submitFeesIssue?.call(feesId, studentId, paymentStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitFeesIssue != null) {
      return submitFeesIssue(feesId, studentId, paymentStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return submitFeesIssue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return submitFeesIssue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitFeesIssue != null) {
      return submitFeesIssue(this);
    }
    return orElse();
  }
}

abstract class _SubmitFeesIssue implements FeesPaymentEvent {
  const factory _SubmitFeesIssue(final String feesId, final String studentId,
      final String paymentStatus) = _$SubmitFeesIssueImpl;

  String get feesId;
  String get studentId;
  String get paymentStatus;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitFeesIssueImplCopyWith<_$SubmitFeesIssueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitFeesIssueSuccessfulImplCopyWith<$Res> {
  factory _$$SubmitFeesIssueSuccessfulImplCopyWith(
          _$SubmitFeesIssueSuccessfulImpl value,
          $Res Function(_$SubmitFeesIssueSuccessfulImpl) then) =
      __$$SubmitFeesIssueSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignupResponse response});
}

/// @nodoc
class __$$SubmitFeesIssueSuccessfulImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res,
        _$SubmitFeesIssueSuccessfulImpl>
    implements _$$SubmitFeesIssueSuccessfulImplCopyWith<$Res> {
  __$$SubmitFeesIssueSuccessfulImplCopyWithImpl(
      _$SubmitFeesIssueSuccessfulImpl _value,
      $Res Function(_$SubmitFeesIssueSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$SubmitFeesIssueSuccessfulImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SignupResponse,
    ));
  }
}

/// @nodoc

class _$SubmitFeesIssueSuccessfulImpl implements _SubmitFeesIssueSuccessful {
  const _$SubmitFeesIssueSuccessfulImpl(this.response);

  @override
  final SignupResponse response;

  @override
  String toString() {
    return 'FeesPaymentEvent.submitFeesIssueSuccessful(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFeesIssueSuccessfulImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFeesIssueSuccessfulImplCopyWith<_$SubmitFeesIssueSuccessfulImpl>
      get copyWith => __$$SubmitFeesIssueSuccessfulImplCopyWithImpl<
          _$SubmitFeesIssueSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return submitFeesIssueSuccessful(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return submitFeesIssueSuccessful?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitFeesIssueSuccessful != null) {
      return submitFeesIssueSuccessful(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return submitFeesIssueSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return submitFeesIssueSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitFeesIssueSuccessful != null) {
      return submitFeesIssueSuccessful(this);
    }
    return orElse();
  }
}

abstract class _SubmitFeesIssueSuccessful implements FeesPaymentEvent {
  const factory _SubmitFeesIssueSuccessful(final SignupResponse response) =
      _$SubmitFeesIssueSuccessfulImpl;

  SignupResponse get response;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitFeesIssueSuccessfulImplCopyWith<_$SubmitFeesIssueSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitFeesIssueFailedImplCopyWith<$Res> {
  factory _$$SubmitFeesIssueFailedImplCopyWith(
          _$SubmitFeesIssueFailedImpl value,
          $Res Function(_$SubmitFeesIssueFailedImpl) then) =
      __$$SubmitFeesIssueFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SubmitFeesIssueFailedImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$SubmitFeesIssueFailedImpl>
    implements _$$SubmitFeesIssueFailedImplCopyWith<$Res> {
  __$$SubmitFeesIssueFailedImplCopyWithImpl(_$SubmitFeesIssueFailedImpl _value,
      $Res Function(_$SubmitFeesIssueFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SubmitFeesIssueFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SubmitFeesIssueFailedImpl implements _SubmitFeesIssueFailed {
  const _$SubmitFeesIssueFailedImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'FeesPaymentEvent.submitFeesIssueFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFeesIssueFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFeesIssueFailedImplCopyWith<_$SubmitFeesIssueFailedImpl>
      get copyWith => __$$SubmitFeesIssueFailedImplCopyWithImpl<
          _$SubmitFeesIssueFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return submitFeesIssueFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return submitFeesIssueFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitFeesIssueFailed != null) {
      return submitFeesIssueFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return submitFeesIssueFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return submitFeesIssueFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitFeesIssueFailed != null) {
      return submitFeesIssueFailed(this);
    }
    return orElse();
  }
}

abstract class _SubmitFeesIssueFailed implements FeesPaymentEvent {
  const factory _SubmitFeesIssueFailed(final String? message) =
      _$SubmitFeesIssueFailedImpl;

  String? get message;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitFeesIssueFailedImplCopyWith<_$SubmitFeesIssueFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchPaymentsImplCopyWith<$Res> {
  factory _$$FetchPaymentsImplCopyWith(
          _$FetchPaymentsImpl value, $Res Function(_$FetchPaymentsImpl) then) =
      __$$FetchPaymentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String feesId});
}

/// @nodoc
class __$$FetchPaymentsImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$FetchPaymentsImpl>
    implements _$$FetchPaymentsImplCopyWith<$Res> {
  __$$FetchPaymentsImplCopyWithImpl(
      _$FetchPaymentsImpl _value, $Res Function(_$FetchPaymentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feesId = null,
  }) {
    return _then(_$FetchPaymentsImpl(
      null == feesId
          ? _value.feesId
          : feesId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchPaymentsImpl implements _FetchPayments {
  const _$FetchPaymentsImpl(this.feesId);

  @override
  final String feesId;

  @override
  String toString() {
    return 'FeesPaymentEvent.fetchPayments(feesId: $feesId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPaymentsImpl &&
            (identical(other.feesId, feesId) || other.feesId == feesId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feesId);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPaymentsImplCopyWith<_$FetchPaymentsImpl> get copyWith =>
      __$$FetchPaymentsImplCopyWithImpl<_$FetchPaymentsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchPayments(feesId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchPayments?.call(feesId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchPayments != null) {
      return fetchPayments(feesId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchPayments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchPayments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchPayments != null) {
      return fetchPayments(this);
    }
    return orElse();
  }
}

abstract class _FetchPayments implements FeesPaymentEvent {
  const factory _FetchPayments(final String feesId) = _$FetchPaymentsImpl;

  String get feesId;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchPaymentsImplCopyWith<_$FetchPaymentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchPaymentsSuccessfulImplCopyWith<$Res> {
  factory _$$FetchPaymentsSuccessfulImplCopyWith(
          _$FetchPaymentsSuccessfulImpl value,
          $Res Function(_$FetchPaymentsSuccessfulImpl) then) =
      __$$FetchPaymentsSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FetchPaymentsResponse fetchPaymentsResponse});
}

/// @nodoc
class __$$FetchPaymentsSuccessfulImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$FetchPaymentsSuccessfulImpl>
    implements _$$FetchPaymentsSuccessfulImplCopyWith<$Res> {
  __$$FetchPaymentsSuccessfulImplCopyWithImpl(
      _$FetchPaymentsSuccessfulImpl _value,
      $Res Function(_$FetchPaymentsSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchPaymentsResponse = null,
  }) {
    return _then(_$FetchPaymentsSuccessfulImpl(
      null == fetchPaymentsResponse
          ? _value.fetchPaymentsResponse
          : fetchPaymentsResponse // ignore: cast_nullable_to_non_nullable
              as FetchPaymentsResponse,
    ));
  }
}

/// @nodoc

class _$FetchPaymentsSuccessfulImpl implements _FetchPaymentsSuccessful {
  const _$FetchPaymentsSuccessfulImpl(this.fetchPaymentsResponse);

  @override
  final FetchPaymentsResponse fetchPaymentsResponse;

  @override
  String toString() {
    return 'FeesPaymentEvent.fetchPaymentsSuccessful(fetchPaymentsResponse: $fetchPaymentsResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPaymentsSuccessfulImpl &&
            (identical(other.fetchPaymentsResponse, fetchPaymentsResponse) ||
                other.fetchPaymentsResponse == fetchPaymentsResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchPaymentsResponse);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPaymentsSuccessfulImplCopyWith<_$FetchPaymentsSuccessfulImpl>
      get copyWith => __$$FetchPaymentsSuccessfulImplCopyWithImpl<
          _$FetchPaymentsSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchPaymentsSuccessful(fetchPaymentsResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchPaymentsSuccessful?.call(fetchPaymentsResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchPaymentsSuccessful != null) {
      return fetchPaymentsSuccessful(fetchPaymentsResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchPaymentsSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchPaymentsSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchPaymentsSuccessful != null) {
      return fetchPaymentsSuccessful(this);
    }
    return orElse();
  }
}

abstract class _FetchPaymentsSuccessful implements FeesPaymentEvent {
  const factory _FetchPaymentsSuccessful(
          final FetchPaymentsResponse fetchPaymentsResponse) =
      _$FetchPaymentsSuccessfulImpl;

  FetchPaymentsResponse get fetchPaymentsResponse;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchPaymentsSuccessfulImplCopyWith<_$FetchPaymentsSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchPaymentsFailedImplCopyWith<$Res> {
  factory _$$FetchPaymentsFailedImplCopyWith(_$FetchPaymentsFailedImpl value,
          $Res Function(_$FetchPaymentsFailedImpl) then) =
      __$$FetchPaymentsFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FetchPaymentsFailedImplCopyWithImpl<$Res>
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$FetchPaymentsFailedImpl>
    implements _$$FetchPaymentsFailedImplCopyWith<$Res> {
  __$$FetchPaymentsFailedImplCopyWithImpl(_$FetchPaymentsFailedImpl _value,
      $Res Function(_$FetchPaymentsFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FetchPaymentsFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchPaymentsFailedImpl implements _FetchPaymentsFailed {
  const _$FetchPaymentsFailedImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'FeesPaymentEvent.fetchPaymentsFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPaymentsFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPaymentsFailedImplCopyWith<_$FetchPaymentsFailedImpl> get copyWith =>
      __$$FetchPaymentsFailedImplCopyWithImpl<_$FetchPaymentsFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchPaymentsFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchPaymentsFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchPaymentsFailed != null) {
      return fetchPaymentsFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchPaymentsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchPaymentsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchPaymentsFailed != null) {
      return fetchPaymentsFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchPaymentsFailed implements FeesPaymentEvent {
  const factory _FetchPaymentsFailed(final String? message) =
      _$FetchPaymentsFailedImpl;

  String? get message;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchPaymentsFailedImplCopyWith<_$FetchPaymentsFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$FeesPaymentEventCopyWithImpl<$Res, _$ErrorMessageImpl>
    implements _$$ErrorMessageImplCopyWith<$Res> {
  __$$ErrorMessageImplCopyWithImpl(
      _$ErrorMessageImpl _value, $Res Function(_$ErrorMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentEvent
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
    return 'FeesPaymentEvent.errorMessage(message: $message)';
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

  /// Create a copy of FeesPaymentEvent
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
    required TResult Function(String title) feesTitleChanged,
    required TResult Function(String total) feesTotalAmountChanged,
    required TResult Function(String details) feesDetailsChanged,
    required TResult Function(String breakDownTitle) breakDownTitleChanged,
    required TResult Function(String breakdownFeeAmount)
        breakDownFeesAmountChanged,
    required TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)
        addFees,
    required TResult Function(SignupResponse response) addFeesSuccessful,
    required TResult Function(String? message) addFeesFailed,
    required TResult Function(String? parentSchoolId, String? studentId)
        fetchFees,
    required TResult Function(FeesResponse feesPayment) fetchFeesSuccessful,
    required TResult Function(String message) fetchFeesFailed,
    required TResult Function(String feeId) fetchFeesById,
    required TResult Function(FetchFeesByIdResponse fetchFeesById)
        fetchFeesSuccessfulById,
    required TResult Function(String message) fetchFeesByIdFailed,
    required TResult Function(String studentId) fetchPaymentHistoryForStudent,
    required TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(String message)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        markFeesPayment,
    required TResult Function(SignupResponse response)
        markFeesPaymentSuccessful,
    required TResult Function(String? message) markFeesPaymentFailed,
    required TResult Function(
            String feesId, String studentId, String paymentStatus)
        submitFeesIssue,
    required TResult Function(SignupResponse response)
        submitFeesIssueSuccessful,
    required TResult Function(String? message) submitFeesIssueFailed,
    required TResult Function(String feesId) fetchPayments,
    required TResult Function(FetchPaymentsResponse fetchPaymentsResponse)
        fetchPaymentsSuccessful,
    required TResult Function(String? message) fetchPaymentsFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return errorMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? feesTitleChanged,
    TResult? Function(String total)? feesTotalAmountChanged,
    TResult? Function(String details)? feesDetailsChanged,
    TResult? Function(String breakDownTitle)? breakDownTitleChanged,
    TResult? Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult? Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult? Function(SignupResponse response)? addFeesSuccessful,
    TResult? Function(String? message)? addFeesFailed,
    TResult? Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult? Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult? Function(String message)? fetchFeesFailed,
    TResult? Function(String feeId)? fetchFeesById,
    TResult? Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult? Function(String message)? fetchFeesByIdFailed,
    TResult? Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult? Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult? Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult? Function(String? message)? markFeesPaymentFailed,
    TResult? Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult? Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult? Function(String? message)? submitFeesIssueFailed,
    TResult? Function(String feesId)? fetchPayments,
    TResult? Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult? Function(String? message)? fetchPaymentsFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return errorMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? feesTitleChanged,
    TResult Function(String total)? feesTotalAmountChanged,
    TResult Function(String details)? feesDetailsChanged,
    TResult Function(String breakDownTitle)? breakDownTitleChanged,
    TResult Function(String breakdownFeeAmount)? breakDownFeesAmountChanged,
    TResult Function(FeesPaymentRequestBody feesPaymentRequestBody)? addFees,
    TResult Function(SignupResponse response)? addFeesSuccessful,
    TResult Function(String? message)? addFeesFailed,
    TResult Function(String? parentSchoolId, String? studentId)? fetchFees,
    TResult Function(FeesResponse feesPayment)? fetchFeesSuccessful,
    TResult Function(String message)? fetchFeesFailed,
    TResult Function(String feeId)? fetchFeesById,
    TResult Function(FetchFeesByIdResponse fetchFeesById)?
        fetchFeesSuccessfulById,
    TResult Function(String message)? fetchFeesByIdFailed,
    TResult Function(String studentId)? fetchPaymentHistoryForStudent,
    TResult Function(
            IndividualStudentPaymentHistoryResponse feesResponseForStudent)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(String message)? fetchPaymentHistoryForStudentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        markFeesPayment,
    TResult Function(SignupResponse response)? markFeesPaymentSuccessful,
    TResult Function(String? message)? markFeesPaymentFailed,
    TResult Function(String feesId, String studentId, String paymentStatus)?
        submitFeesIssue,
    TResult Function(SignupResponse response)? submitFeesIssueSuccessful,
    TResult Function(String? message)? submitFeesIssueFailed,
    TResult Function(String feesId)? fetchPayments,
    TResult Function(FetchPaymentsResponse fetchPaymentsResponse)?
        fetchPaymentsSuccessful,
    TResult Function(String? message)? fetchPaymentsFailed,
    TResult Function(String? message)? errorMessage,
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
    TResult Function(_FeesPaymentEvent value) $default, {
    required TResult Function(_FeesTitleChanged value) feesTitleChanged,
    required TResult Function(_FeesTotalAmountChanged value)
        feesTotalAmountChanged,
    required TResult Function(_FeesDetailsChanged value) feesDetailsChanged,
    required TResult Function(_BreakDownTitleChanged value)
        breakDownTitleChanged,
    required TResult Function(_BreakDownFeesAmountChanged value)
        breakDownFeesAmountChanged,
    required TResult Function(_AddFees value) addFees,
    required TResult Function(_AddFeesSuccessful value) addFeesSuccessful,
    required TResult Function(_AddFeesFailed value) addFeesFailed,
    required TResult Function(_FetchFees value) fetchFees,
    required TResult Function(_FetchFeesSuccessful value) fetchFeesSuccessful,
    required TResult Function(_FetchFeesFailed value) fetchFeesFailed,
    required TResult Function(_FetchFeesById value) fetchFeesById,
    required TResult Function(_FetchFeesByIdSuccessful value)
        fetchFeesSuccessfulById,
    required TResult Function(_FetchFeesByIdFailed value) fetchFeesByIdFailed,
    required TResult Function(_FetchPaymentHistoryForStudent value)
        fetchPaymentHistoryForStudent,
    required TResult Function(_FetchPaymentHistoryForStudentSuccessful value)
        fetchPaymentHistoryForStudentSuccessful,
    required TResult Function(_FetchPaymentHistoryForStudentFailed value)
        fetchPaymentHistoryForStudentFailed,
    required TResult Function(_MarkFeesPayment value) markFeesPayment,
    required TResult Function(_MarkFeesPaymentSuccessful value)
        markFeesPaymentSuccessful,
    required TResult Function(_MarkFeesPaymentFailed value)
        markFeesPaymentFailed,
    required TResult Function(_SubmitFeesIssue value) submitFeesIssue,
    required TResult Function(_SubmitFeesIssueSuccessful value)
        submitFeesIssueSuccessful,
    required TResult Function(_SubmitFeesIssueFailed value)
        submitFeesIssueFailed,
    required TResult Function(_FetchPayments value) fetchPayments,
    required TResult Function(_FetchPaymentsSuccessful value)
        fetchPaymentsSuccessful,
    required TResult Function(_FetchPaymentsFailed value) fetchPaymentsFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return errorMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FeesPaymentEvent value)? $default, {
    TResult? Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult? Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult? Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult? Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult? Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult? Function(_AddFees value)? addFees,
    TResult? Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult? Function(_AddFeesFailed value)? addFeesFailed,
    TResult? Function(_FetchFees value)? fetchFees,
    TResult? Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult? Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult? Function(_FetchFeesById value)? fetchFeesById,
    TResult? Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult? Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult? Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult? Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult? Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult? Function(_MarkFeesPayment value)? markFeesPayment,
    TResult? Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult? Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult? Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult? Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult? Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult? Function(_FetchPayments value)? fetchPayments,
    TResult? Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult? Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return errorMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FeesPaymentEvent value)? $default, {
    TResult Function(_FeesTitleChanged value)? feesTitleChanged,
    TResult Function(_FeesTotalAmountChanged value)? feesTotalAmountChanged,
    TResult Function(_FeesDetailsChanged value)? feesDetailsChanged,
    TResult Function(_BreakDownTitleChanged value)? breakDownTitleChanged,
    TResult Function(_BreakDownFeesAmountChanged value)?
        breakDownFeesAmountChanged,
    TResult Function(_AddFees value)? addFees,
    TResult Function(_AddFeesSuccessful value)? addFeesSuccessful,
    TResult Function(_AddFeesFailed value)? addFeesFailed,
    TResult Function(_FetchFees value)? fetchFees,
    TResult Function(_FetchFeesSuccessful value)? fetchFeesSuccessful,
    TResult Function(_FetchFeesFailed value)? fetchFeesFailed,
    TResult Function(_FetchFeesById value)? fetchFeesById,
    TResult Function(_FetchFeesByIdSuccessful value)? fetchFeesSuccessfulById,
    TResult Function(_FetchFeesByIdFailed value)? fetchFeesByIdFailed,
    TResult Function(_FetchPaymentHistoryForStudent value)?
        fetchPaymentHistoryForStudent,
    TResult Function(_FetchPaymentHistoryForStudentSuccessful value)?
        fetchPaymentHistoryForStudentSuccessful,
    TResult Function(_FetchPaymentHistoryForStudentFailed value)?
        fetchPaymentHistoryForStudentFailed,
    TResult Function(_MarkFeesPayment value)? markFeesPayment,
    TResult Function(_MarkFeesPaymentSuccessful value)?
        markFeesPaymentSuccessful,
    TResult Function(_MarkFeesPaymentFailed value)? markFeesPaymentFailed,
    TResult Function(_SubmitFeesIssue value)? submitFeesIssue,
    TResult Function(_SubmitFeesIssueSuccessful value)?
        submitFeesIssueSuccessful,
    TResult Function(_SubmitFeesIssueFailed value)? submitFeesIssueFailed,
    TResult Function(_FetchPayments value)? fetchPayments,
    TResult Function(_FetchPaymentsSuccessful value)? fetchPaymentsSuccessful,
    TResult Function(_FetchPaymentsFailed value)? fetchPaymentsFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (errorMessage != null) {
      return errorMessage(this);
    }
    return orElse();
  }
}

abstract class _ErrorMessage implements FeesPaymentEvent {
  const factory _ErrorMessage(final String? message) = _$ErrorMessageImpl;

  String? get message;

  /// Create a copy of FeesPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorMessageImplCopyWith<_$ErrorMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeesPaymentState {
  FormzSubmissionStatus get addFeesPaymentStatus =>
      throw _privateConstructorUsedError;
  FormzSubmissionStatus get fetchFeesPaymentStatus =>
      throw _privateConstructorUsedError;
  FeesTitleFormz get feesTitle => throw _privateConstructorUsedError;
  FeesDetailsFormz get feesDetails => throw _privateConstructorUsedError;
  FeesTotalAmountFormz get feesTotalAmount =>
      throw _privateConstructorUsedError;
  FeesBreakdownTitleFormz get feesBreakdownTitle =>
      throw _privateConstructorUsedError;
  FeesBreakDownAmountFormz get feesBreakDownAmount =>
      throw _privateConstructorUsedError;
  FeesPaymentResponse? get feesPaymentResponse =>
      throw _privateConstructorUsedError;
  FeesResponse? get feesResponse => throw _privateConstructorUsedError;
  List<FetchResponseDatum>? get fetchFeesResponseDatum =>
      throw _privateConstructorUsedError;
  FeesPaymentRequestBody? get feesPaymentRequestBody =>
      throw _privateConstructorUsedError;
  FetchFeesByIdResponse? get fetchFeesById =>
      throw _privateConstructorUsedError;
  FetchFeesByIdResponseDatum? get fetchFeesByIdResponseDatum =>
      throw _privateConstructorUsedError;
  IndividualStudentPaymentHistoryResponse?
      get individualStudentPaymentHistoryResponse =>
          throw _privateConstructorUsedError;
  List<IndividualStudentPaymentHistoryResponseDatum>?
      get individualStudentPaymentHistoryResponseDatum =>
          throw _privateConstructorUsedError;
  FormzSubmissionStatus get fetchPaymentHistoryForStudentStatus =>
      throw _privateConstructorUsedError;
  FormzSubmissionStatus get fetchFeesByIdStatus =>
      throw _privateConstructorUsedError; ////////////////////////////////////////////////////////////////////////////
  FormzSubmissionStatus get markFeesPaymentStatus =>
      throw _privateConstructorUsedError;
  FormzSubmissionStatus get submitFeesIssueStatus =>
      throw _privateConstructorUsedError; ////////////////////////////////////////////////////////////////////////////
  FormzSubmissionStatus get fetchPaymentStatus =>
      throw _privateConstructorUsedError;
  FetchPaymentsResponse? get fetchPaymentsResponse =>
      throw _privateConstructorUsedError;
  List<FetchPaymentsDatum>? get fetchPaymentsDatum =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of FeesPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeesPaymentStateCopyWith<FeesPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeesPaymentStateCopyWith<$Res> {
  factory $FeesPaymentStateCopyWith(
          FeesPaymentState value, $Res Function(FeesPaymentState) then) =
      _$FeesPaymentStateCopyWithImpl<$Res, FeesPaymentState>;
  @useResult
  $Res call(
      {FormzSubmissionStatus addFeesPaymentStatus,
      FormzSubmissionStatus fetchFeesPaymentStatus,
      FeesTitleFormz feesTitle,
      FeesDetailsFormz feesDetails,
      FeesTotalAmountFormz feesTotalAmount,
      FeesBreakdownTitleFormz feesBreakdownTitle,
      FeesBreakDownAmountFormz feesBreakDownAmount,
      FeesPaymentResponse? feesPaymentResponse,
      FeesResponse? feesResponse,
      List<FetchResponseDatum>? fetchFeesResponseDatum,
      FeesPaymentRequestBody? feesPaymentRequestBody,
      FetchFeesByIdResponse? fetchFeesById,
      FetchFeesByIdResponseDatum? fetchFeesByIdResponseDatum,
      IndividualStudentPaymentHistoryResponse?
          individualStudentPaymentHistoryResponse,
      List<IndividualStudentPaymentHistoryResponseDatum>?
          individualStudentPaymentHistoryResponseDatum,
      FormzSubmissionStatus fetchPaymentHistoryForStudentStatus,
      FormzSubmissionStatus fetchFeesByIdStatus,
      FormzSubmissionStatus markFeesPaymentStatus,
      FormzSubmissionStatus submitFeesIssueStatus,
      FormzSubmissionStatus fetchPaymentStatus,
      FetchPaymentsResponse? fetchPaymentsResponse,
      List<FetchPaymentsDatum>? fetchPaymentsDatum,
      String? errorMessage});
}

/// @nodoc
class _$FeesPaymentStateCopyWithImpl<$Res, $Val extends FeesPaymentState>
    implements $FeesPaymentStateCopyWith<$Res> {
  _$FeesPaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeesPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addFeesPaymentStatus = null,
    Object? fetchFeesPaymentStatus = null,
    Object? feesTitle = null,
    Object? feesDetails = null,
    Object? feesTotalAmount = null,
    Object? feesBreakdownTitle = null,
    Object? feesBreakDownAmount = null,
    Object? feesPaymentResponse = freezed,
    Object? feesResponse = freezed,
    Object? fetchFeesResponseDatum = freezed,
    Object? feesPaymentRequestBody = freezed,
    Object? fetchFeesById = freezed,
    Object? fetchFeesByIdResponseDatum = freezed,
    Object? individualStudentPaymentHistoryResponse = freezed,
    Object? individualStudentPaymentHistoryResponseDatum = freezed,
    Object? fetchPaymentHistoryForStudentStatus = null,
    Object? fetchFeesByIdStatus = null,
    Object? markFeesPaymentStatus = null,
    Object? submitFeesIssueStatus = null,
    Object? fetchPaymentStatus = null,
    Object? fetchPaymentsResponse = freezed,
    Object? fetchPaymentsDatum = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      addFeesPaymentStatus: null == addFeesPaymentStatus
          ? _value.addFeesPaymentStatus
          : addFeesPaymentStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchFeesPaymentStatus: null == fetchFeesPaymentStatus
          ? _value.fetchFeesPaymentStatus
          : fetchFeesPaymentStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      feesTitle: null == feesTitle
          ? _value.feesTitle
          : feesTitle // ignore: cast_nullable_to_non_nullable
              as FeesTitleFormz,
      feesDetails: null == feesDetails
          ? _value.feesDetails
          : feesDetails // ignore: cast_nullable_to_non_nullable
              as FeesDetailsFormz,
      feesTotalAmount: null == feesTotalAmount
          ? _value.feesTotalAmount
          : feesTotalAmount // ignore: cast_nullable_to_non_nullable
              as FeesTotalAmountFormz,
      feesBreakdownTitle: null == feesBreakdownTitle
          ? _value.feesBreakdownTitle
          : feesBreakdownTitle // ignore: cast_nullable_to_non_nullable
              as FeesBreakdownTitleFormz,
      feesBreakDownAmount: null == feesBreakDownAmount
          ? _value.feesBreakDownAmount
          : feesBreakDownAmount // ignore: cast_nullable_to_non_nullable
              as FeesBreakDownAmountFormz,
      feesPaymentResponse: freezed == feesPaymentResponse
          ? _value.feesPaymentResponse
          : feesPaymentResponse // ignore: cast_nullable_to_non_nullable
              as FeesPaymentResponse?,
      feesResponse: freezed == feesResponse
          ? _value.feesResponse
          : feesResponse // ignore: cast_nullable_to_non_nullable
              as FeesResponse?,
      fetchFeesResponseDatum: freezed == fetchFeesResponseDatum
          ? _value.fetchFeesResponseDatum
          : fetchFeesResponseDatum // ignore: cast_nullable_to_non_nullable
              as List<FetchResponseDatum>?,
      feesPaymentRequestBody: freezed == feesPaymentRequestBody
          ? _value.feesPaymentRequestBody
          : feesPaymentRequestBody // ignore: cast_nullable_to_non_nullable
              as FeesPaymentRequestBody?,
      fetchFeesById: freezed == fetchFeesById
          ? _value.fetchFeesById
          : fetchFeesById // ignore: cast_nullable_to_non_nullable
              as FetchFeesByIdResponse?,
      fetchFeesByIdResponseDatum: freezed == fetchFeesByIdResponseDatum
          ? _value.fetchFeesByIdResponseDatum
          : fetchFeesByIdResponseDatum // ignore: cast_nullable_to_non_nullable
              as FetchFeesByIdResponseDatum?,
      individualStudentPaymentHistoryResponse: freezed ==
              individualStudentPaymentHistoryResponse
          ? _value.individualStudentPaymentHistoryResponse
          : individualStudentPaymentHistoryResponse // ignore: cast_nullable_to_non_nullable
              as IndividualStudentPaymentHistoryResponse?,
      individualStudentPaymentHistoryResponseDatum: freezed ==
              individualStudentPaymentHistoryResponseDatum
          ? _value.individualStudentPaymentHistoryResponseDatum
          : individualStudentPaymentHistoryResponseDatum // ignore: cast_nullable_to_non_nullable
              as List<IndividualStudentPaymentHistoryResponseDatum>?,
      fetchPaymentHistoryForStudentStatus: null ==
              fetchPaymentHistoryForStudentStatus
          ? _value.fetchPaymentHistoryForStudentStatus
          : fetchPaymentHistoryForStudentStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchFeesByIdStatus: null == fetchFeesByIdStatus
          ? _value.fetchFeesByIdStatus
          : fetchFeesByIdStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      markFeesPaymentStatus: null == markFeesPaymentStatus
          ? _value.markFeesPaymentStatus
          : markFeesPaymentStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      submitFeesIssueStatus: null == submitFeesIssueStatus
          ? _value.submitFeesIssueStatus
          : submitFeesIssueStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchPaymentStatus: null == fetchPaymentStatus
          ? _value.fetchPaymentStatus
          : fetchPaymentStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchPaymentsResponse: freezed == fetchPaymentsResponse
          ? _value.fetchPaymentsResponse
          : fetchPaymentsResponse // ignore: cast_nullable_to_non_nullable
              as FetchPaymentsResponse?,
      fetchPaymentsDatum: freezed == fetchPaymentsDatum
          ? _value.fetchPaymentsDatum
          : fetchPaymentsDatum // ignore: cast_nullable_to_non_nullable
              as List<FetchPaymentsDatum>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeesPaymentStateImplCopyWith<$Res>
    implements $FeesPaymentStateCopyWith<$Res> {
  factory _$$FeesPaymentStateImplCopyWith(_$FeesPaymentStateImpl value,
          $Res Function(_$FeesPaymentStateImpl) then) =
      __$$FeesPaymentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzSubmissionStatus addFeesPaymentStatus,
      FormzSubmissionStatus fetchFeesPaymentStatus,
      FeesTitleFormz feesTitle,
      FeesDetailsFormz feesDetails,
      FeesTotalAmountFormz feesTotalAmount,
      FeesBreakdownTitleFormz feesBreakdownTitle,
      FeesBreakDownAmountFormz feesBreakDownAmount,
      FeesPaymentResponse? feesPaymentResponse,
      FeesResponse? feesResponse,
      List<FetchResponseDatum>? fetchFeesResponseDatum,
      FeesPaymentRequestBody? feesPaymentRequestBody,
      FetchFeesByIdResponse? fetchFeesById,
      FetchFeesByIdResponseDatum? fetchFeesByIdResponseDatum,
      IndividualStudentPaymentHistoryResponse?
          individualStudentPaymentHistoryResponse,
      List<IndividualStudentPaymentHistoryResponseDatum>?
          individualStudentPaymentHistoryResponseDatum,
      FormzSubmissionStatus fetchPaymentHistoryForStudentStatus,
      FormzSubmissionStatus fetchFeesByIdStatus,
      FormzSubmissionStatus markFeesPaymentStatus,
      FormzSubmissionStatus submitFeesIssueStatus,
      FormzSubmissionStatus fetchPaymentStatus,
      FetchPaymentsResponse? fetchPaymentsResponse,
      List<FetchPaymentsDatum>? fetchPaymentsDatum,
      String? errorMessage});
}

/// @nodoc
class __$$FeesPaymentStateImplCopyWithImpl<$Res>
    extends _$FeesPaymentStateCopyWithImpl<$Res, _$FeesPaymentStateImpl>
    implements _$$FeesPaymentStateImplCopyWith<$Res> {
  __$$FeesPaymentStateImplCopyWithImpl(_$FeesPaymentStateImpl _value,
      $Res Function(_$FeesPaymentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addFeesPaymentStatus = null,
    Object? fetchFeesPaymentStatus = null,
    Object? feesTitle = null,
    Object? feesDetails = null,
    Object? feesTotalAmount = null,
    Object? feesBreakdownTitle = null,
    Object? feesBreakDownAmount = null,
    Object? feesPaymentResponse = freezed,
    Object? feesResponse = freezed,
    Object? fetchFeesResponseDatum = freezed,
    Object? feesPaymentRequestBody = freezed,
    Object? fetchFeesById = freezed,
    Object? fetchFeesByIdResponseDatum = freezed,
    Object? individualStudentPaymentHistoryResponse = freezed,
    Object? individualStudentPaymentHistoryResponseDatum = freezed,
    Object? fetchPaymentHistoryForStudentStatus = null,
    Object? fetchFeesByIdStatus = null,
    Object? markFeesPaymentStatus = null,
    Object? submitFeesIssueStatus = null,
    Object? fetchPaymentStatus = null,
    Object? fetchPaymentsResponse = freezed,
    Object? fetchPaymentsDatum = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$FeesPaymentStateImpl(
      addFeesPaymentStatus: null == addFeesPaymentStatus
          ? _value.addFeesPaymentStatus
          : addFeesPaymentStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchFeesPaymentStatus: null == fetchFeesPaymentStatus
          ? _value.fetchFeesPaymentStatus
          : fetchFeesPaymentStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      feesTitle: null == feesTitle
          ? _value.feesTitle
          : feesTitle // ignore: cast_nullable_to_non_nullable
              as FeesTitleFormz,
      feesDetails: null == feesDetails
          ? _value.feesDetails
          : feesDetails // ignore: cast_nullable_to_non_nullable
              as FeesDetailsFormz,
      feesTotalAmount: null == feesTotalAmount
          ? _value.feesTotalAmount
          : feesTotalAmount // ignore: cast_nullable_to_non_nullable
              as FeesTotalAmountFormz,
      feesBreakdownTitle: null == feesBreakdownTitle
          ? _value.feesBreakdownTitle
          : feesBreakdownTitle // ignore: cast_nullable_to_non_nullable
              as FeesBreakdownTitleFormz,
      feesBreakDownAmount: null == feesBreakDownAmount
          ? _value.feesBreakDownAmount
          : feesBreakDownAmount // ignore: cast_nullable_to_non_nullable
              as FeesBreakDownAmountFormz,
      feesPaymentResponse: freezed == feesPaymentResponse
          ? _value.feesPaymentResponse
          : feesPaymentResponse // ignore: cast_nullable_to_non_nullable
              as FeesPaymentResponse?,
      feesResponse: freezed == feesResponse
          ? _value.feesResponse
          : feesResponse // ignore: cast_nullable_to_non_nullable
              as FeesResponse?,
      fetchFeesResponseDatum: freezed == fetchFeesResponseDatum
          ? _value._fetchFeesResponseDatum
          : fetchFeesResponseDatum // ignore: cast_nullable_to_non_nullable
              as List<FetchResponseDatum>?,
      feesPaymentRequestBody: freezed == feesPaymentRequestBody
          ? _value.feesPaymentRequestBody
          : feesPaymentRequestBody // ignore: cast_nullable_to_non_nullable
              as FeesPaymentRequestBody?,
      fetchFeesById: freezed == fetchFeesById
          ? _value.fetchFeesById
          : fetchFeesById // ignore: cast_nullable_to_non_nullable
              as FetchFeesByIdResponse?,
      fetchFeesByIdResponseDatum: freezed == fetchFeesByIdResponseDatum
          ? _value.fetchFeesByIdResponseDatum
          : fetchFeesByIdResponseDatum // ignore: cast_nullable_to_non_nullable
              as FetchFeesByIdResponseDatum?,
      individualStudentPaymentHistoryResponse: freezed ==
              individualStudentPaymentHistoryResponse
          ? _value.individualStudentPaymentHistoryResponse
          : individualStudentPaymentHistoryResponse // ignore: cast_nullable_to_non_nullable
              as IndividualStudentPaymentHistoryResponse?,
      individualStudentPaymentHistoryResponseDatum: freezed ==
              individualStudentPaymentHistoryResponseDatum
          ? _value._individualStudentPaymentHistoryResponseDatum
          : individualStudentPaymentHistoryResponseDatum // ignore: cast_nullable_to_non_nullable
              as List<IndividualStudentPaymentHistoryResponseDatum>?,
      fetchPaymentHistoryForStudentStatus: null ==
              fetchPaymentHistoryForStudentStatus
          ? _value.fetchPaymentHistoryForStudentStatus
          : fetchPaymentHistoryForStudentStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchFeesByIdStatus: null == fetchFeesByIdStatus
          ? _value.fetchFeesByIdStatus
          : fetchFeesByIdStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      markFeesPaymentStatus: null == markFeesPaymentStatus
          ? _value.markFeesPaymentStatus
          : markFeesPaymentStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      submitFeesIssueStatus: null == submitFeesIssueStatus
          ? _value.submitFeesIssueStatus
          : submitFeesIssueStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchPaymentStatus: null == fetchPaymentStatus
          ? _value.fetchPaymentStatus
          : fetchPaymentStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchPaymentsResponse: freezed == fetchPaymentsResponse
          ? _value.fetchPaymentsResponse
          : fetchPaymentsResponse // ignore: cast_nullable_to_non_nullable
              as FetchPaymentsResponse?,
      fetchPaymentsDatum: freezed == fetchPaymentsDatum
          ? _value._fetchPaymentsDatum
          : fetchPaymentsDatum // ignore: cast_nullable_to_non_nullable
              as List<FetchPaymentsDatum>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FeesPaymentStateImpl implements _FeesPaymentState {
  const _$FeesPaymentStateImpl(
      {this.addFeesPaymentStatus = FormzSubmissionStatus.initial,
      this.fetchFeesPaymentStatus = FormzSubmissionStatus.initial,
      this.feesTitle = const FeesTitleFormz.pure(),
      this.feesDetails = const FeesDetailsFormz.pure(),
      this.feesTotalAmount = const FeesTotalAmountFormz.pure(),
      this.feesBreakdownTitle = const FeesBreakdownTitleFormz.pure(),
      this.feesBreakDownAmount = const FeesBreakDownAmountFormz.pure(),
      this.feesPaymentResponse,
      this.feesResponse,
      final List<FetchResponseDatum>? fetchFeesResponseDatum,
      this.feesPaymentRequestBody,
      this.fetchFeesById,
      this.fetchFeesByIdResponseDatum,
      this.individualStudentPaymentHistoryResponse,
      final List<IndividualStudentPaymentHistoryResponseDatum>?
          individualStudentPaymentHistoryResponseDatum,
      this.fetchPaymentHistoryForStudentStatus = FormzSubmissionStatus.initial,
      this.fetchFeesByIdStatus = FormzSubmissionStatus.initial,
      this.markFeesPaymentStatus = FormzSubmissionStatus.initial,
      this.submitFeesIssueStatus = FormzSubmissionStatus.initial,
      this.fetchPaymentStatus = FormzSubmissionStatus.initial,
      this.fetchPaymentsResponse,
      final List<FetchPaymentsDatum>? fetchPaymentsDatum,
      this.errorMessage})
      : _fetchFeesResponseDatum = fetchFeesResponseDatum,
        _individualStudentPaymentHistoryResponseDatum =
            individualStudentPaymentHistoryResponseDatum,
        _fetchPaymentsDatum = fetchPaymentsDatum;

  @override
  @JsonKey()
  final FormzSubmissionStatus addFeesPaymentStatus;
  @override
  @JsonKey()
  final FormzSubmissionStatus fetchFeesPaymentStatus;
  @override
  @JsonKey()
  final FeesTitleFormz feesTitle;
  @override
  @JsonKey()
  final FeesDetailsFormz feesDetails;
  @override
  @JsonKey()
  final FeesTotalAmountFormz feesTotalAmount;
  @override
  @JsonKey()
  final FeesBreakdownTitleFormz feesBreakdownTitle;
  @override
  @JsonKey()
  final FeesBreakDownAmountFormz feesBreakDownAmount;
  @override
  final FeesPaymentResponse? feesPaymentResponse;
  @override
  final FeesResponse? feesResponse;
  final List<FetchResponseDatum>? _fetchFeesResponseDatum;
  @override
  List<FetchResponseDatum>? get fetchFeesResponseDatum {
    final value = _fetchFeesResponseDatum;
    if (value == null) return null;
    if (_fetchFeesResponseDatum is EqualUnmodifiableListView)
      return _fetchFeesResponseDatum;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FeesPaymentRequestBody? feesPaymentRequestBody;
  @override
  final FetchFeesByIdResponse? fetchFeesById;
  @override
  final FetchFeesByIdResponseDatum? fetchFeesByIdResponseDatum;
  @override
  final IndividualStudentPaymentHistoryResponse?
      individualStudentPaymentHistoryResponse;
  final List<IndividualStudentPaymentHistoryResponseDatum>?
      _individualStudentPaymentHistoryResponseDatum;
  @override
  List<IndividualStudentPaymentHistoryResponseDatum>?
      get individualStudentPaymentHistoryResponseDatum {
    final value = _individualStudentPaymentHistoryResponseDatum;
    if (value == null) return null;
    if (_individualStudentPaymentHistoryResponseDatum
        is EqualUnmodifiableListView)
      return _individualStudentPaymentHistoryResponseDatum;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final FormzSubmissionStatus fetchPaymentHistoryForStudentStatus;
  @override
  @JsonKey()
  final FormzSubmissionStatus fetchFeesByIdStatus;
////////////////////////////////////////////////////////////////////////////
  @override
  @JsonKey()
  final FormzSubmissionStatus markFeesPaymentStatus;
  @override
  @JsonKey()
  final FormzSubmissionStatus submitFeesIssueStatus;
////////////////////////////////////////////////////////////////////////////
  @override
  @JsonKey()
  final FormzSubmissionStatus fetchPaymentStatus;
  @override
  final FetchPaymentsResponse? fetchPaymentsResponse;
  final List<FetchPaymentsDatum>? _fetchPaymentsDatum;
  @override
  List<FetchPaymentsDatum>? get fetchPaymentsDatum {
    final value = _fetchPaymentsDatum;
    if (value == null) return null;
    if (_fetchPaymentsDatum is EqualUnmodifiableListView)
      return _fetchPaymentsDatum;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'FeesPaymentState(addFeesPaymentStatus: $addFeesPaymentStatus, fetchFeesPaymentStatus: $fetchFeesPaymentStatus, feesTitle: $feesTitle, feesDetails: $feesDetails, feesTotalAmount: $feesTotalAmount, feesBreakdownTitle: $feesBreakdownTitle, feesBreakDownAmount: $feesBreakDownAmount, feesPaymentResponse: $feesPaymentResponse, feesResponse: $feesResponse, fetchFeesResponseDatum: $fetchFeesResponseDatum, feesPaymentRequestBody: $feesPaymentRequestBody, fetchFeesById: $fetchFeesById, fetchFeesByIdResponseDatum: $fetchFeesByIdResponseDatum, individualStudentPaymentHistoryResponse: $individualStudentPaymentHistoryResponse, individualStudentPaymentHistoryResponseDatum: $individualStudentPaymentHistoryResponseDatum, fetchPaymentHistoryForStudentStatus: $fetchPaymentHistoryForStudentStatus, fetchFeesByIdStatus: $fetchFeesByIdStatus, markFeesPaymentStatus: $markFeesPaymentStatus, submitFeesIssueStatus: $submitFeesIssueStatus, fetchPaymentStatus: $fetchPaymentStatus, fetchPaymentsResponse: $fetchPaymentsResponse, fetchPaymentsDatum: $fetchPaymentsDatum, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeesPaymentStateImpl &&
            (identical(other.addFeesPaymentStatus, addFeesPaymentStatus) ||
                other.addFeesPaymentStatus == addFeesPaymentStatus) &&
            (identical(other.fetchFeesPaymentStatus, fetchFeesPaymentStatus) ||
                other.fetchFeesPaymentStatus == fetchFeesPaymentStatus) &&
            (identical(other.feesTitle, feesTitle) ||
                other.feesTitle == feesTitle) &&
            (identical(other.feesDetails, feesDetails) ||
                other.feesDetails == feesDetails) &&
            (identical(other.feesTotalAmount, feesTotalAmount) ||
                other.feesTotalAmount == feesTotalAmount) &&
            (identical(other.feesBreakdownTitle, feesBreakdownTitle) ||
                other.feesBreakdownTitle == feesBreakdownTitle) &&
            (identical(other.feesBreakDownAmount, feesBreakDownAmount) ||
                other.feesBreakDownAmount == feesBreakDownAmount) &&
            (identical(other.feesPaymentResponse, feesPaymentResponse) ||
                other.feesPaymentResponse == feesPaymentResponse) &&
            (identical(other.feesResponse, feesResponse) ||
                other.feesResponse == feesResponse) &&
            const DeepCollectionEquality().equals(
                other._fetchFeesResponseDatum, _fetchFeesResponseDatum) &&
            (identical(other.feesPaymentRequestBody, feesPaymentRequestBody) ||
                other.feesPaymentRequestBody == feesPaymentRequestBody) &&
            (identical(other.fetchFeesById, fetchFeesById) ||
                other.fetchFeesById == fetchFeesById) &&
            (identical(other.fetchFeesByIdResponseDatum, fetchFeesByIdResponseDatum) ||
                other.fetchFeesByIdResponseDatum ==
                    fetchFeesByIdResponseDatum) &&
            (identical(other.individualStudentPaymentHistoryResponse,
                    individualStudentPaymentHistoryResponse) ||
                other.individualStudentPaymentHistoryResponse ==
                    individualStudentPaymentHistoryResponse) &&
            const DeepCollectionEquality().equals(
                other._individualStudentPaymentHistoryResponseDatum,
                _individualStudentPaymentHistoryResponseDatum) &&
            (identical(other.fetchPaymentHistoryForStudentStatus,
                    fetchPaymentHistoryForStudentStatus) ||
                other.fetchPaymentHistoryForStudentStatus ==
                    fetchPaymentHistoryForStudentStatus) &&
            (identical(other.fetchFeesByIdStatus, fetchFeesByIdStatus) ||
                other.fetchFeesByIdStatus == fetchFeesByIdStatus) &&
            (identical(other.markFeesPaymentStatus, markFeesPaymentStatus) ||
                other.markFeesPaymentStatus == markFeesPaymentStatus) &&
            (identical(other.submitFeesIssueStatus, submitFeesIssueStatus) ||
                other.submitFeesIssueStatus == submitFeesIssueStatus) &&
            (identical(other.fetchPaymentStatus, fetchPaymentStatus) ||
                other.fetchPaymentStatus == fetchPaymentStatus) &&
            (identical(other.fetchPaymentsResponse, fetchPaymentsResponse) ||
                other.fetchPaymentsResponse == fetchPaymentsResponse) &&
            const DeepCollectionEquality()
                .equals(other._fetchPaymentsDatum, _fetchPaymentsDatum) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        addFeesPaymentStatus,
        fetchFeesPaymentStatus,
        feesTitle,
        feesDetails,
        feesTotalAmount,
        feesBreakdownTitle,
        feesBreakDownAmount,
        feesPaymentResponse,
        feesResponse,
        const DeepCollectionEquality().hash(_fetchFeesResponseDatum),
        feesPaymentRequestBody,
        fetchFeesById,
        fetchFeesByIdResponseDatum,
        individualStudentPaymentHistoryResponse,
        const DeepCollectionEquality()
            .hash(_individualStudentPaymentHistoryResponseDatum),
        fetchPaymentHistoryForStudentStatus,
        fetchFeesByIdStatus,
        markFeesPaymentStatus,
        submitFeesIssueStatus,
        fetchPaymentStatus,
        fetchPaymentsResponse,
        const DeepCollectionEquality().hash(_fetchPaymentsDatum),
        errorMessage
      ]);

  /// Create a copy of FeesPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeesPaymentStateImplCopyWith<_$FeesPaymentStateImpl> get copyWith =>
      __$$FeesPaymentStateImplCopyWithImpl<_$FeesPaymentStateImpl>(
          this, _$identity);
}

abstract class _FeesPaymentState implements FeesPaymentState {
  const factory _FeesPaymentState(
      {final FormzSubmissionStatus addFeesPaymentStatus,
      final FormzSubmissionStatus fetchFeesPaymentStatus,
      final FeesTitleFormz feesTitle,
      final FeesDetailsFormz feesDetails,
      final FeesTotalAmountFormz feesTotalAmount,
      final FeesBreakdownTitleFormz feesBreakdownTitle,
      final FeesBreakDownAmountFormz feesBreakDownAmount,
      final FeesPaymentResponse? feesPaymentResponse,
      final FeesResponse? feesResponse,
      final List<FetchResponseDatum>? fetchFeesResponseDatum,
      final FeesPaymentRequestBody? feesPaymentRequestBody,
      final FetchFeesByIdResponse? fetchFeesById,
      final FetchFeesByIdResponseDatum? fetchFeesByIdResponseDatum,
      final IndividualStudentPaymentHistoryResponse?
          individualStudentPaymentHistoryResponse,
      final List<IndividualStudentPaymentHistoryResponseDatum>?
          individualStudentPaymentHistoryResponseDatum,
      final FormzSubmissionStatus fetchPaymentHistoryForStudentStatus,
      final FormzSubmissionStatus fetchFeesByIdStatus,
      final FormzSubmissionStatus markFeesPaymentStatus,
      final FormzSubmissionStatus submitFeesIssueStatus,
      final FormzSubmissionStatus fetchPaymentStatus,
      final FetchPaymentsResponse? fetchPaymentsResponse,
      final List<FetchPaymentsDatum>? fetchPaymentsDatum,
      final String? errorMessage}) = _$FeesPaymentStateImpl;

  @override
  FormzSubmissionStatus get addFeesPaymentStatus;
  @override
  FormzSubmissionStatus get fetchFeesPaymentStatus;
  @override
  FeesTitleFormz get feesTitle;
  @override
  FeesDetailsFormz get feesDetails;
  @override
  FeesTotalAmountFormz get feesTotalAmount;
  @override
  FeesBreakdownTitleFormz get feesBreakdownTitle;
  @override
  FeesBreakDownAmountFormz get feesBreakDownAmount;
  @override
  FeesPaymentResponse? get feesPaymentResponse;
  @override
  FeesResponse? get feesResponse;
  @override
  List<FetchResponseDatum>? get fetchFeesResponseDatum;
  @override
  FeesPaymentRequestBody? get feesPaymentRequestBody;
  @override
  FetchFeesByIdResponse? get fetchFeesById;
  @override
  FetchFeesByIdResponseDatum? get fetchFeesByIdResponseDatum;
  @override
  IndividualStudentPaymentHistoryResponse?
      get individualStudentPaymentHistoryResponse;
  @override
  List<IndividualStudentPaymentHistoryResponseDatum>?
      get individualStudentPaymentHistoryResponseDatum;
  @override
  FormzSubmissionStatus get fetchPaymentHistoryForStudentStatus;
  @override
  FormzSubmissionStatus
      get fetchFeesByIdStatus; ////////////////////////////////////////////////////////////////////////////
  @override
  FormzSubmissionStatus get markFeesPaymentStatus;
  @override
  FormzSubmissionStatus
      get submitFeesIssueStatus; ////////////////////////////////////////////////////////////////////////////
  @override
  FormzSubmissionStatus get fetchPaymentStatus;
  @override
  FetchPaymentsResponse? get fetchPaymentsResponse;
  @override
  List<FetchPaymentsDatum>? get fetchPaymentsDatum;
  @override
  String? get errorMessage;

  /// Create a copy of FeesPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeesPaymentStateImplCopyWith<_$FeesPaymentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
