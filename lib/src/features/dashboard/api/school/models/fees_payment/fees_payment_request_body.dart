import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/fees_payment_breakdown.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fees_payment_request_body.g.dart';

@JsonSerializable()
class FeesPaymentRequestBody {
  FeesPaymentRequestBody(
    this.title,
    this.details,
    this.totalAmount,
    this.classes,
    this.feesBreakdown,
    this.dueDate,
    this.term,
  );

  factory FeesPaymentRequestBody.fromJson(Map<String, dynamic> json) =>
      _$FeesPaymentRequestBodyFromJson(json);

  final String title;
  final String details;
  final String totalAmount;
  final List<String> classes;
  final List<FeesBreakdown> feesBreakdown;
  final String dueDate;
  final String term;

  Map<String, dynamic> toJson() => {
        'title': title,
        'details': details,
        'totalAmount': totalAmount,
        'classes': classes,
        'feesBreakdown': feesBreakdown
            .map((feesBreakdown) => feesBreakdown.toJson())
            .toList(),
        'dueDate': dueDate,
        'term': term,
      };
}
