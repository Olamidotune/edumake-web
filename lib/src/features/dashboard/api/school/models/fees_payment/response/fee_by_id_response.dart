import 'package:json_annotation/json_annotation.dart';

part 'fee_by_id_response.g.dart';

@JsonSerializable()
class FetchFeesByIdResponse {
  FetchFeesByIdResponse({
    this.success,
    this.message,
    this.data,
    this.statusCode,
  });

  factory FetchFeesByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchFeesByIdResponseFromJson(json);
  @JsonKey(name: 'success')
  bool? success;

  @JsonKey(name: 'message')
  String? message;

  @JsonKey(name: 'data')
  FetchFeesByIdResponseDatum? data;

  @JsonKey(name: 'statusCode')
  int? statusCode;
  Map<String, dynamic> toJson() => _$FetchFeesByIdResponseToJson(this);
}

@JsonSerializable()
class FetchFeesByIdResponseDatum {
  FetchFeesByIdResponseDatum({
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

  factory FetchFeesByIdResponseDatum.fromJson(Map<String, dynamic> json) =>
      _$FetchFeesByIdResponseDatumFromJson(json);
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'details')
  String? details;
  @JsonKey(name: 'totalAmount')
  int? totalAmount;
  @JsonKey(name: 'classes')
  List<Class>? classes;
  @JsonKey(name: 'school')
  School? school;
  @JsonKey(name: 'createdBy')
  CreatedBy? createdBy;
  @JsonKey(name: 'feesBreakdown')
  List<FeesBreakdown>? feesBreakdown;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'dueDate')
  DateTime? dueDate;
  @JsonKey(name: 'term')
  String? term;
  @JsonKey(name: 'students')
  List<Student>? students;
  @JsonKey(name: 'isDeleted')
  bool? isDeleted;
  @JsonKey(name: 'createdAt')
  DateTime? createdAt;
  @JsonKey(name: 'updatedAt')
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;
  Map<String, dynamic> toJson() => _$FetchFeesByIdResponseDatumToJson(this);
}

@JsonSerializable()
class Class {
  Class({
    this.id,
    this.name,
  });

  factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);
  @JsonKey(name: '_id')
  String? id;
  String? name;
  Map<String, dynamic> toJson() => _$ClassToJson(this);
}

@JsonSerializable()
class CreatedBy {
  CreatedBy({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
  });

  factory CreatedBy.fromJson(Map<String, dynamic> json) =>
      _$CreatedByFromJson(json);
  @JsonKey(name: '_id')
  String? id;
  String? email;
  String? firstName;
  String? lastName;
  Map<String, dynamic> toJson() => _$CreatedByToJson(this);
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
  String? title;
  int? amount;
  @JsonKey(name: '_id')
  String? id;
  Map<String, dynamic> toJson() => _$FeesBreakdownToJson(this);
}

@JsonSerializable()
class School {
  School({
    this.id,
  });

  factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);
  @JsonKey(name: '_id')
  String? id;
  Map<String, dynamic> toJson() => _$SchoolToJson(this);
}

@JsonSerializable()
class Student {
  Student({
    this.studentId,
    this.paymentStatus,
    this.amountPaid,
    this.id,
  });

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
  StudentId? studentId;
  String? paymentStatus;
  int? amountPaid;
  @JsonKey(name: '_id')
  String? id;
  Map<String, dynamic> toJson() => _$StudentToJson(this);
}

@JsonSerializable()
class StudentId {
  StudentId({
    this.id,
    this.studentIdClass,
    this.name,
    this.school,
    this.guardians,
    this.isDeleted,
    this.v,
    this.createdAt,
    this.updatedAt,
    this.slug,
  });

  factory StudentId.fromJson(Map<String, dynamic> json) =>
      _$StudentIdFromJson(json);
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: 'class')
  FetchFeeByIdClass? studentIdClass;

  String? name;

  String? school;

  List<Guardian>? guardians;

  bool? isDeleted;

  int? v;

  DateTime? createdAt;

  DateTime? updatedAt;
  String? slug;
  Map<String, dynamic> toJson() => _$StudentIdToJson(this);
}

@JsonSerializable()
class FetchFeeByIdClass {
  FetchFeeByIdClass({
    this.id,
    this.school,
    this.name,
    this.slug,
    this.isDeleted,
    this.v,
    this.createdAt,
    this.updatedAt,
  });

  factory FetchFeeByIdClass.fromJson(Map<String, dynamic>? json) =>
      json == null ? FetchFeeByIdClass() : _$FetchFeeByIdClassFromJson(json);

  @JsonKey(name: '_id')
  String? id;

  @JsonKey(name: 'school')
  String? school;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'slug')
  String? slug;

  @JsonKey(name: 'isDeleted')
  bool? isDeleted;

  @JsonKey(name: '__v')
  int? v;

  @JsonKey(name: 'createdAt')
  DateTime? createdAt;

  @JsonKey(name: 'updatedAt')
  DateTime? updatedAt;

  Map<String, dynamic> toJson() => _$FetchFeeByIdClassToJson(this);
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
  @JsonKey(name: 'guardianId')
  String? guardianId;
  String? relationship;
  @JsonKey(name: '_id')
  String? id;
  Map<String, dynamic> toJson() => _$GuardianToJson(this);
}
