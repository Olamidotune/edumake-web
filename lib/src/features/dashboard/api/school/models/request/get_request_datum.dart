import 'package:edumake_frontend/src/features/dashboard/api/school/models/request/get_request_parent.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/request/get_request_students.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_request_datum.g.dart';

@JsonSerializable()
class GetRequestDatum {
  GetRequestDatum({
    required this.parent,
    required this.id,
    required this.student,
    required this.status,
    required this.school,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory GetRequestDatum.fromJson(Map<String, dynamic> json) =>
      _$GetRequestDatumFromJson(json);

  @JsonKey(name: 'parent')
  final Parent parent;

  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'student')
  final Student student;

  @JsonKey(name: 'status')
  final String status;

  @JsonKey(name: 'school')
  final String school;

  @JsonKey(name: 'isDeleted')
  final bool isDeleted;

  @JsonKey(name: 'createdAt')
  final DateTime createdAt;

  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  @JsonKey(name: '__v')
  final int v;
  Map<String, dynamic> toJson() => _$GetRequestDatumToJson(this);
}

// ////
// ///
// ///
// ///
// class FetchClassSubjects {
//   bool success;
//   String message;
//   int statusCode;
//   Data data;

//   FetchClassSubjects({
//     required this.success,
//     required this.message,
//     required this.statusCode,
//     required this.data,
//   });
// }

// class Data {
//   Parent parent;
//   String id;
//   Student student;
//   String status;
//   String school;
//   bool isDeleted;
//   DateTime createdAt;
//   DateTime updatedAt;
//   int v;

//   Data({
//     required this.parent,
//     required this.id,
//     required this.student,
//     required this.status,
//     required this.school,
//     required this.isDeleted,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.v,
//   });
// }

// class Parent {
//   Id id;
//   String relationship;

//   Parent({
//     required this.id,
//     required this.relationship,
//   });
// }

// class Id {
//   String id;
//   String email;
//   String firstName;
//   String idNumber;
//   String lastName;
//   String phoneNumber;

//   Id({
//     required this.id,
//     required this.email,
//     required this.firstName,
//     required this.idNumber,
//     required this.lastName,
//     required this.phoneNumber,
//   });
// }

// class Student {
//   String id;
//   Student? studentClass;
//   String name;
//   String school;
//   List<Guardian>? guardians;
//   bool isDeleted;
//   int v;
//   DateTime createdAt;
//   DateTime updatedAt;
//   String? slug;

//   Student({
//     required this.id,
//     this.studentClass,
//     required this.name,
//     required this.school,
//     this.guardians,
//     required this.isDeleted,
//     required this.v,
//     required this.createdAt,
//     required this.updatedAt,
//     this.slug,
//   });
// }

// class Guardian {
//   String guardianId;
//   String relationship;
//   String id;

//   Guardian({
//     required this.guardianId,
//     required this.relationship,
//     required this.id,
//   });
// }
