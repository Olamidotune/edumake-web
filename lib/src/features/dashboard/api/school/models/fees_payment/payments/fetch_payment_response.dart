import 'package:json_annotation/json_annotation.dart';

part 'fetch_payment_response.g.dart';

@JsonSerializable(explicitToJson: true)
class FetchPaymentsResponse {
  FetchPaymentsResponse({
    required this.success,
    required this.message,
    required this.data,
    required this.statusCode,
    this.cursor,
  });

  factory FetchPaymentsResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchPaymentsResponseFromJson(json);
  @JsonKey(name: 'success')
  final bool success;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final List<FetchPaymentsDatum> data;
  @JsonKey(name: 'cursor')
  final String? cursor;
  @JsonKey(name: 'statusCode')
  final int statusCode;
  Map<String, dynamic> toJson() => _$FetchPaymentsResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchPaymentsDatum {
  FetchPaymentsDatum({
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

  factory FetchPaymentsDatum.fromJson(Map<String, dynamic> json) =>
      _$FetchPaymentsDatumFromJson(json);
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'fee')
  final Fee fee;
  @JsonKey(name: 'amount')
  final int amount;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'paidBy')
  final PaidBy paidBy;
  @JsonKey(name: 'school')
  final String school;
  @JsonKey(name: 'paidFor')
  final PaidFor paidFor;
  @JsonKey(name: 'hasIssue')
  final bool hasIssue;
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  @JsonKey(name: '__v')
  final int v;
  Map<String, dynamic> toJson() => _$FetchPaymentsDatumToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Fee {
  Fee({
    required this.id,
    required this.title,
    required this.feesBreakdown,
    required this.dueDate,
    required this.term,
  });

  factory Fee.fromJson(Map<String, dynamic> json) => _$FeeFromJson(json);
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'feesBreakdown')
  final List<FeesBreakdown> feesBreakdown;
  @JsonKey(name: 'dueDate')
  final DateTime dueDate;
  @JsonKey(name: 'term')
  final String term;
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
  final String title;
  @JsonKey(name: 'amount')
  final int amount;
  @JsonKey(name: '_id')
  final String id;
  Map<String, dynamic> toJson() => _$FeesBreakdownToJson(this);
}

@JsonSerializable()
class PaidBy {
  PaidBy({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  factory PaidBy.fromJson(Map<String, dynamic> json) => _$PaidByFromJson(json);
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  Map<String, dynamic> toJson() => _$PaidByToJson(this);

  String? get fullName {
    final fullName = '$firstName $lastName';
    return fullName == ' ' ? null : fullName;
  }
}

@JsonSerializable()
class PaidFor {
  PaidFor({
    required this.id,
    required this.paidForClass,
    required this.name,
  });

  factory PaidFor.fromJson(Map<String, dynamic> json) =>
      _$PaidForFromJson(json);
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'class')
  final String paidForClass;
  @JsonKey(name: 'name')
  final String name;
  Map<String, dynamic> toJson() => _$PaidForToJson(this);
}
