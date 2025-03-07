import 'package:json_annotation/json_annotation.dart';

// part 'individual_student_payment_history.g.dart';

part 'individual_student_payment_response.g.dart';

@JsonSerializable(explicitToJson: true)
class IndividualStudentPaymentHistoryResponse {
  IndividualStudentPaymentHistoryResponse({
    this.success,
    this.message,
    this.statusCode,
    this.data,
  });
  factory IndividualStudentPaymentHistoryResponse.fromJson(
          Map<String, dynamic> json) =>
      _$IndividualStudentPaymentHistoryResponseFromJson(json);
  final bool? success;
  final String? message;
  final int? statusCode;
  final List<IndividualStudentPaymentHistoryResponseDatum>? data;
  Map<String, dynamic> toJson() =>
      _$IndividualStudentPaymentHistoryResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IndividualStudentPaymentHistoryResponseDatum {
  IndividualStudentPaymentHistoryResponseDatum({
    this.id,
    this.fee,
    this.amount,
    this.status,
    this.paidBy,
    this.school,
    this.paidFor,
    this.hasIssue,
    this.isDeleted,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory IndividualStudentPaymentHistoryResponseDatum.fromJson(
          Map<String, dynamic> json) =>
      _$IndividualStudentPaymentHistoryResponseDatumFromJson(json);
  final String? id;
  final Fee? fee;
  final int? amount;
  final String? status;
  final PaidBy? paidBy;
  final School? school;
  final PaidFor? paidFor;
  final bool? hasIssue;
  final bool? isDeleted;
  final String? createdAt;
  final String? updatedAt;
  @JsonKey(name: '__v')
  final int? v;
  Map<String, dynamic> toJson() =>
      _$IndividualStudentPaymentHistoryResponseDatumToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Fee {
  Fee({
    this.id,
    this.title,
    this.details,
    this.totalAmount,
    this.classes,
    this.school,
    this.createdBy,
    this.feesBreakdown,
    this.status,
    this.dueDate,
    this.term,
    this.students,
    this.isDeleted,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Fee.fromJson(Map<String, dynamic> json) => _$FeeFromJson(json);
  final String? id;
  final String? title;
  final String? details;
  final int? totalAmount;
  final List<String>? classes;
  final String? school;
  final String? createdBy;
  final List<FeesBreakdown>? feesBreakdown;
  final String? status;
  final DateTime? dueDate;
  final String? term;
  final List<Student>? students;
  final bool? isDeleted;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  @JsonKey(name: '__v')
  final int? v;
  Map<String, dynamic> toJson() => _$FeeToJson(this);
}

@JsonSerializable()
class FeesBreakdown {
  FeesBreakdown({
    this.title,
    this.amount,
    this.id,
  });

  factory FeesBreakdown.fromJson(Map<String, dynamic> json) =>
      _$FeesBreakdownFromJson(json);
  final String? title;
  final int? amount;
  final String? id;
  Map<String, dynamic> toJson() => _$FeesBreakdownToJson(this);
}

@JsonSerializable()
class Student {
  Student({
    this.studentId,
    this.paymentStatus,
    this.amountPaid,
    this.id,
    this.paymentDate,
  });

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
  final String? studentId;
  final String? paymentStatus;
  final int? amountPaid;
  final String? id;
  final DateTime? paymentDate;
  Map<String, dynamic> toJson() => _$StudentToJson(this);
}

@JsonSerializable()
class PaidBy {
  PaidBy({
    this.id,
    this.email,
  });

  factory PaidBy.fromJson(Map<String, dynamic> json) => _$PaidByFromJson(json);
  final String? id;
  final String? email;
  Map<String, dynamic> toJson() => _$PaidByToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaidFor {
  PaidFor({
    this.id,
    this.paidForClass,
    this.name,
    this.school,
    this.guardians,
    this.isDeleted,
    this.v,
    this.createdAt,
    this.updatedAt,
  });

  factory PaidFor.fromJson(Map<String, dynamic> json) =>
      _$PaidForFromJson(json);
  final String? id;
  final String? paidForClass;
  final String? name;
  final String? school;
  final List<Guardian>? guardians;
  final bool? isDeleted;
  @JsonKey(name: '__v')
  final int? v;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  Map<String, dynamic> toJson() => _$PaidForToJson(this);
}

@JsonSerializable()
class Guardian {
  Guardian({
    this.guardianId,
    this.relationship,
    this.id,
  });

  factory Guardian.fromJson(Map<String, dynamic> json) =>
      _$GuardianFromJson(json);
  final String? guardianId;
  final String? relationship;
  final String? id;
  Map<String, dynamic> toJson() => _$GuardianToJson(this);
}

@JsonSerializable()
class School {
  School({
    this.id,
  });

  factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);
  final String? id;
  Map<String, dynamic> toJson() => _$SchoolToJson(this);
}
