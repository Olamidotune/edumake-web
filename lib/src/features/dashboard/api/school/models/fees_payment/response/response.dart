import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable(explicitToJson: true)
class FeesResponse {
  FeesResponse({
    required this.success,
    required this.message,
    required this.data,
    required this.statusCode,
  });
  factory FeesResponse.fromJson(Map<String, dynamic> json) =>
      _$FeesResponseFromJson(json);
  @JsonKey(name: 'success')
  bool success;

  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'data')
  List<Datum> data;

  @JsonKey(name: 'statusCode')
  int statusCode;
  Map<String, dynamic> toJson() => _$FeesResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Datum {
  Datum({
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

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'details')
  String details;

  @JsonKey(name: 'totalAmount')
  int totalAmount;

  @JsonKey(name: 'classes')
  List<Class> classes;

  @JsonKey(name: 'school')
  String school;

  @JsonKey(name: 'createdBy')
  CreatedBy createdBy;

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
  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

@JsonSerializable()
class Class {
  Class({
    required this.id,
    required this.name,
  });

  factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);
  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'name')
  String name;
  Map<String, dynamic> toJson() => _$ClassToJson(this);
}

@JsonSerializable()
class CreatedBy {
  CreatedBy({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  factory CreatedBy.fromJson(Map<String, dynamic> json) =>
      _$CreatedByFromJson(json);
  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'email')
  String email;

  @JsonKey(name: 'firstName')
  String firstName;

  @JsonKey(name: 'lastName')
  String lastName;
  Map<String, dynamic> toJson() => _$CreatedByToJson(this);
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
  Map<String, dynamic> toJson() => _$StudentToJson(this);
}
