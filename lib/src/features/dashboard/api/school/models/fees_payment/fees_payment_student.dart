import 'package:json_annotation/json_annotation.dart';

part 'fees_payment_student.g.dart';

@JsonSerializable()
class FeesPaymentStudent {
  FeesPaymentStudent({
    required this.studentId,
    required this.paymentStatus,
    required this.amountPaid,
    required this.id,
  });

  factory FeesPaymentStudent.fromJson(Map<String, dynamic> json) =>
      _$FeesPaymentStudentFromJson(json);
  @JsonKey(name: 'studentId')
  final String studentId;

  @JsonKey(name: 'paymentStatus')
  final String paymentStatus;

  @JsonKey(name: 'amountPaid')
  final int amountPaid;

  @JsonKey(name: '_id')
  final String id;
  Map<String, dynamic> toJson() => _$FeesPaymentStudentToJson(this);
}
