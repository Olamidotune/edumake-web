import 'package:json_annotation/json_annotation.dart';

part 'subject.g.dart';

@JsonSerializable()
class Subject {
  Subject({
    required this.classes,
    required this.name,
    this.note,
  });

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);

  List<String> classes;
  String name;
  String? note;

  Map<String, dynamic> toJson() => _$SubjectToJson(this);
}



// {
// "type": "Request--->",
// "url": "https://edumake-backend.onrender.com/api/v1/sch/subjects/67991ea0c1bc2dd292b374b1",
// "method": "POST",
// "payload": {
//   "subjects": [
//     {
//       "classes": [
//         "67994b1070cb1409e17f1c3d"
//       ],
//       "name": "Biology",
//       "note": "Biology"
//     },
//     {
//       "classes": [
//         "67994b1070cb1409e17f1c3d"
//       ],
//       "name": "Maths",
//       "note": "Maths"
//     }
//   ]
// }
// }