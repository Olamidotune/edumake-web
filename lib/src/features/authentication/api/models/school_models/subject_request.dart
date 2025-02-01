import 'package:edumake_frontend/src/features/authentication/api/models/school_models/subject.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subject_request.g.dart';

@JsonSerializable()
class SubjectRequest {
  SubjectRequest({required this.subjects});

  List<Subject> subjects;

  Map<String, dynamic> toJson() => {
        'subjects': subjects.map((s) => s.toJson()).toList(),
      };
}
