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
    required this.attendance,
    required this.feesAmount,
    required this.upComingEvent,
    required this.gender,
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
      attendance: map['attendance'] as String,
      feesAmount: map['feesAmount'] as String,
      upComingEvent: map['upComingEvent'] as String,
      gender: map['gender'] as String,
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
  final String attendance;
  final String feesAmount;
  final String upComingEvent;
  final String gender;
}

List<StudentModel> parseStudents(Map<String, dynamic> data) {
  final studentsData = data['students'] as List<dynamic>;
  return studentsData
      .map(
        (studentMap) =>
            StudentModel.fromMap(studentMap as Map<String, dynamic>),
      )
      .toList();
}
