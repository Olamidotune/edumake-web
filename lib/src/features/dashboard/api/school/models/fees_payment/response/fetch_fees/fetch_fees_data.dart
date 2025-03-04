import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/fetch_fees/fetch_fees_breakdown.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/fetch_fees/fetch_fees_class.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/fetch_fees/fetch_fees_created_by.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/fetch_fees/fetch_fees_school.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/fetch_fees/fetch_fees_student.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_fees_data.g.dart';

@JsonSerializable()
class FetchResponseDatum {
  FetchResponseDatum({
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
    this.isDeleted,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.students,
  });

  factory FetchResponseDatum.fromJson(Map<String, dynamic> json) =>
      _$FetchResponseDatumFromJson(json);
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
  CreateBy? createdBy;

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

  // @JsonKey(name: 'students', defaultValue: [])
  // List<Student> students;

  @JsonKey(name: 'isDeleted')
  bool? isDeleted;

  @JsonKey(name: 'createdAt')
  DateTime? createdAt;

  @JsonKey(name: 'updatedAt')
  DateTime? updatedAt;

  @JsonKey(name: '__v')
  int? v;
  Map<String, dynamic> toJson() => _$FetchResponseDatumToJson(this);
}
