part of 'fees_payment_bloc.dart';

@freezed
class FeesPaymentState with _$FeesPaymentState {
  const factory FeesPaymentState({
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus addFeesPaymentStatus,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchFeesPaymentStatus,
    @Default(FeesTitleFormz.pure()) FeesTitleFormz feesTitle,
    @Default(FeesDetailsFormz.pure()) FeesDetailsFormz feesDetails,
    @Default(FeesTotalAmountFormz.pure()) FeesTotalAmountFormz feesTotalAmount,
    @Default(FeesBreakdownTitleFormz.pure())
    FeesBreakdownTitleFormz feesBreakdownTitle,
    @Default(FeesBreakDownAmountFormz.pure())
    FeesBreakDownAmountFormz feesBreakDownAmount,
    FeesPaymentResponse? feesPaymentResponse,
    FeesResponse? feesResponse,
    @Default([]) List<Datum> datum,
    FeesPaymentRequestBody? feesPaymentRequestBody,
    FeeByIdResponse? feesIdResponse,
    List<FeeByIdData>? feesIdDatum,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchFeesByIdStatus,
    String? errorMessage,
  }) = _FeesPaymentState;
}

extension FeesPaymentStateX on FeesPaymentState {
  Map<String, String> get studentPaymentStatus {
    final paymentStatusMap = <String, String>{};

    // Ensure there's a response before processing
    if (feesResponse?.data != null) {
      for (final fee in feesResponse!.data) {
        for (final student in fee.students) {
          paymentStatusMap[student.studentId] = student.paymentStatus;
        }
      }
    }

    return paymentStatusMap;
  }
}

//==============================================================================
// FORMZ -  FEESTitle
//==============================================================================

class FeesTitleFormz extends FormzInput<String, ValidationError> {
  const FeesTitleFormz.pure([String value = '']) : super.pure(value);
  const FeesTitleFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 6) {
      return ValidationError.short;
    }

    return null;
  }
}

//==============================================================================
// FORMZ -  Fees Title
//==============================================================================

class FeesDetailsFormz extends FormzInput<String, ValidationError> {
  const FeesDetailsFormz.pure([String value = '']) : super.pure(value);
  const FeesDetailsFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 6) {
      return ValidationError.short;
    }

    return null;
  }
}

//==============================================================================
// FORMZ -  Fees Title
//==============================================================================

class FeesTotalAmountFormz extends FormzInput<String, ValidationError> {
  const FeesTotalAmountFormz.pure([String value = '']) : super.pure(value);
  const FeesTotalAmountFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 6) {
      return ValidationError.short;
    }

    return null;
  }
}

//==============================================================================
// FORMZ -  Fees Title
//==============================================================================

class FeesBreakdownTitleFormz extends FormzInput<String, ValidationError> {
  const FeesBreakdownTitleFormz.pure([String value = '']) : super.pure(value);
  const FeesBreakdownTitleFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 6) {
      return ValidationError.short;
    }

    return null;
  }
}

//==============================================================================
// FORMZ -  Fees Title
//==============================================================================

class FeesBreakDownAmountFormz extends FormzInput<String, ValidationError> {
  const FeesBreakDownAmountFormz.pure([String value = '']) : super.pure(value);
  const FeesBreakDownAmountFormz.dirty([String value = ''])
      : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 6) {
      return ValidationError.short;
    }

    return null;
  }
}
