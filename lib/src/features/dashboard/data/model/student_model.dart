class StudentModel {
  StudentModel({
    required this.name,
    required this.classLevel,
    required this.feesPaid,
    required this.phoneNumber,
    required this.school,
    required this.createdAt,
    required this.updatedAt,
    required this.deviceToken,
    required this.assignment,
  });

  factory StudentModel.fromMap(Map<String, dynamic> map) {
    return StudentModel(
      name: map['name'] as String,
      classLevel: map['class'] as String,
      feesPaid: map['feesPaid'] as bool,
      phoneNumber: map['phoneNumber'] as String,
      school: map['school'] as String,
      createdAt: map['createdAt'] as String,
      updatedAt: map['updatedAt'] as String,
      deviceToken: map['deviceToken'] as String,
      assignment: map['assignment'] as String,
    );
  }

  final String name;
  final String classLevel;
  final bool feesPaid;
  final String phoneNumber;
  final String school;
  final String createdAt;
  final String updatedAt;
  final String deviceToken;
  final String assignment;
}
