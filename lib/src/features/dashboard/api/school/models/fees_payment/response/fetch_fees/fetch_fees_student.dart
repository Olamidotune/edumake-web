import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/fetch_fees/fetch_fees_student_id.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fetch_fees_student.g.dart';

@JsonSerializable()
class Students {
  Students({
    this.studentId,
    this.paymentStatus,
    this.amountPaid,
    this.amountPaidId,
  });

  factory Students.fromJson(Map<String, dynamic> json) =>
      _$StudentsFromJson(json);
  @JsonKey(name: 'studentId')
  StudentId? studentId;

  @JsonKey(name: 'paymentStatus')
  String? paymentStatus;

  @JsonKey(name: 'amountPaid')
  int? amountPaid;

  @JsonKey(name: '_id')
  String? amountPaidId;
  Map<String, dynamic> toJson() => _$StudentsToJson(this);
}
