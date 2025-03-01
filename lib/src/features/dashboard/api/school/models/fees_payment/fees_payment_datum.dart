import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/fees_payment_breakdown.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/fees_payment_student.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fees_payment_datum.g.dart';

@JsonSerializable()
class FeesPaymentDatum {
  FeesPaymentDatum({
    required this.title,
    required this.details,
    required this.totalAmount,
    required this.classes,
    required this.school,
    required this.createdBy,
    required this.feesBreakdown,
    required this.status,
    required this.dueDate,
    required this.term,
    required this.students,
    required this.isDeleted,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory FeesPaymentDatum.fromJson(Map<String, dynamic> json) =>
      _$FeesPaymentDatumFromJson(json);
  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'details')
  final String details;

  @JsonKey(name: 'totalAmount')
  final int totalAmount;

  @JsonKey(name: 'classes')
  final List<String> classes;

  @JsonKey(name: 'school')
  final String school;

  @JsonKey(name: 'createdBy')
  final String createdBy;

  @JsonKey(name: 'feesBreakdown')
  final List<FeesBreakdown> feesBreakdown;

  @JsonKey(name: 'status')
  final String status;

  @JsonKey(name: 'dueDate')
  final DateTime dueDate;

  @JsonKey(name: 'term')
  final String term;

  @JsonKey(name: 'students')
  final List<FeesPaymentStudent> students;

  @JsonKey(name: 'isDeleted')
  final bool isDeleted;

  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'createdAt')
  final DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  @JsonKey(name: '__v')
  final int v;
  Map<String, dynamic> toJson() => _$FeesPaymentDatumToJson(this);
}
