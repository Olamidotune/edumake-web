
// class StudentModel {
//   StudentModel({
//     required this.name,
//     required this.classLevel,
//     required this.feesPaid,
//     required this.phoneNumber,
//     required this.school,
//     required this.isVerified,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.deviceToken,
//   });

//   factory StudentModel.fromMap(Map<String, dynamic> map) {
//     return StudentModel(
//       name: map['name'] as String,
//       classLevel: map['classLevel'] as String,
//       feesPaid: map['feesPaid'] as bool,
//       phoneNumber: map['phoneNumber'] as String,
//       school: map['school'] as String,
//       isVerified: map['isVerified'] as bool,
//       createdAt: map['createdAt'] as String,
//       updatedAt: map['updatedAt'] as String,
//       deviceToken: map['deviceToken'] as String,
//     );
//   }

//   factory StudentModel.fromJson(String source) =>
//       StudentModel.fromMap(json.decode(source) as Map<String, dynamic>);

//   final String name;
//   final String classLevel;
//   final bool feesPaid;
//   final String phoneNumber;
//   final String school;
//   final bool isVerified;
//   final String createdAt;
//   final String updatedAt;
//   final String deviceToken;

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'name': name,
//       'classLevel': classLevel,
//       'feesPaid': feesPaid,
//       'phoneNumber': phoneNumber,
//       'school': school,
//       'isVerified': isVerified,
//       'createdAt': createdAt,
//       'updatedAt': updatedAt,
//       'deviceToken': deviceToken,
//     };
//   }

//   String toJson() => json.encode(toMap());
// }
