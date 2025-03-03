import 'package:json_annotation/json_annotation.dart';

part 'individual_student_fee_payment_response.g.dart';

@JsonSerializable()
class IndividualStudentPaymentHistoryResponse {
  IndividualStudentPaymentHistoryResponse({
    required this.success,
    required this.message,
    required this.statusCode,
    required this.data,
  });

  factory IndividualStudentPaymentHistoryResponse.fromJson(
          Map<String, dynamic> json) =>
      _$IndividualStudentPaymentHistoryResponseFromJson(json);
  @JsonKey(name: 'success')
  bool success;

  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'statusCode')
  int statusCode;

  @JsonKey(name: 'data')
  List<IndividualStudentPaymentHistoryResponseDatum> data;
  Map<String, dynamic> toJson() =>
      _$IndividualStudentPaymentHistoryResponseToJson(this);
}

@JsonSerializable()
class IndividualStudentPaymentHistoryResponseDatum {
  IndividualStudentPaymentHistoryResponseDatum({
    required this.id,
    required this.fee,
    required this.amount,
    required this.status,
    required this.paidBy,
    required this.school,
    required this.paidFor,
    required this.hasIssue,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory IndividualStudentPaymentHistoryResponseDatum.fromJson(
          Map<String, dynamic> json) =>
      _$IndividualStudentPaymentHistoryResponseDatumFromJson(json);
  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'fee')
  Fee fee;

  @JsonKey(name: 'amount')
  int amount;

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'paidBy')
  dynamic paidBy;

  @JsonKey(name: 'school')
  School school;

  @JsonKey(name: 'paidFor')
  String paidFor;

  @JsonKey(name: 'hasIssue')
  bool hasIssue;

  @JsonKey(name: 'isDeleted')
  bool isDeleted;

  @JsonKey(name: 'createdAt')
  DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  DateTime updatedAt;

  @JsonKey(name: '__v')
  int v;
  Map<String, dynamic> toJson() =>
      _$IndividualStudentPaymentHistoryResponseDatumToJson(this);
}

@JsonSerializable()
class Fee {
  Fee({
    required this.id,
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
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory Fee.fromJson(Map<String, dynamic> json) => _$FeeFromJson(json);
  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'details')
  String details;

  @JsonKey(name: 'totalAmount')
  int totalAmount;

  @JsonKey(name: 'classes')
  List<String> classes;

  @JsonKey(name: 'school')
  String school;

  @JsonKey(name: 'createdBy')
  String createdBy;

  @JsonKey(name: 'feesBreakdown')
  List<FeesBreakdown> feesBreakdown;

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'dueDate')
  DateTime dueDate;

  @JsonKey(name: 'term')
  String term;

  @JsonKey(name: 'students')
  List<Student> students;

  @JsonKey(name: 'isDeleted')
  bool isDeleted;

  @JsonKey(name: 'createdAt')
  DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  DateTime updatedAt;

  @JsonKey(name: '__v')
  int v;
  Map<String, dynamic> toJson() => _$FeeToJson(this);
}

@JsonSerializable()
class FeesBreakdown {
  FeesBreakdown({
    required this.title,
    required this.amount,
    required this.id,
  });

  factory FeesBreakdown.fromJson(Map<String, dynamic> json) =>
      _$FeesBreakdownFromJson(json);
  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'amount')
  int amount;

  @JsonKey(name: '_id')
  String id;
  Map<String, dynamic> toJson() => _$FeesBreakdownToJson(this);
}

@JsonSerializable()
class Student {
  Student({
    required this.studentId,
    required this.paymentStatus,
    required this.amountPaid,
    required this.id,
    this.paymentDate,
  });

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
  @JsonKey(name: 'studentId')
  String studentId;

  @JsonKey(name: 'paymentStatus')
  String paymentStatus;

  @JsonKey(name: 'amountPaid')
  int amountPaid;

  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'paymentDate')
  DateTime? paymentDate;
  Map<String, dynamic> toJson() => _$StudentToJson(this);
}

@JsonSerializable()
class School {
  School({
    required this.id,
    required this.admin,
    required this.schoolName,
    required this.schoolAddress,
    required this.schoolEmail,
    required this.schoolType,
    required this.classNumberRange,
    required this.studentNumberRange,
    required this.teacherNumberRange,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);
  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'admin')
  String admin;

  @JsonKey(name: 'schoolName')
  String schoolName;

  @JsonKey(name: 'schoolAddress')
  String schoolAddress;

  @JsonKey(name: 'schoolEmail')
  String schoolEmail;

  @JsonKey(name: 'schoolType')
  String schoolType;

  @JsonKey(name: 'classNumberRange')
  String classNumberRange;

  @JsonKey(name: 'studentNumberRange')
  String studentNumberRange;

  @JsonKey(name: 'teacherNumberRange')
  String teacherNumberRange;

  @JsonKey(name: 'isDeleted')
  bool isDeleted;

  @JsonKey(name: 'createdAt')
  DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  DateTime updatedAt;

  @JsonKey(name: '__v')
  int v;
  Map<String, dynamic> toJson() => _$SchoolToJson(this);
}
