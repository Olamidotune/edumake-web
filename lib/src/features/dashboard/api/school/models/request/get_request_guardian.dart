import 'package:json_annotation/json_annotation.dart';

part 'get_request_guardian.g.dart';

@JsonSerializable()
class Guardians {
  Guardians({
    required this.guardianId,
    required this.relationship,
    required this.id,
  });

  factory Guardians.fromJson(Map<String, dynamic> json) =>
      _$GuardiansFromJson(json);

  @JsonKey(name: 'id')
  String guardianId;
  @JsonKey(name: 'relationship')
  String relationship;
  @JsonKey(name: '_id')
  String id;

  Map<String, dynamic> toJson() => _$GuardiansToJson(this);
}




//  {
//  "type": "Response<---",
//  "url": "https://edumake-backend.onrender.com/api/v1/sch/request/67c235ded49f475cca2a507a",
//  "response": {
//    "success": true,
//    "message": "Request handled successfully",
//    "statusCode": 200,
//    "data": {
//      "parent": {
//        "id": {
//          "_id": "67a3f42fee44a92d7649a663",
//          "email": "parenttest@gmail.com",
//          "firstName": "Eriola",
//          "idNumber": "09876543212",
//          "lastName": "Samuel",
//          "phoneNumber": "12345678990"
//        },
//        "relationship": "Guardian"
//      },
//      "_id": "67c235ded49f475cca2a507a",
//      "student": {
//        "_id": "679f8d8a0d7b34ddc134ebd8",
//        "class": {
//          "_id": "67994daa70cb1409e17f1c63",
//          "school": "67991ea0c1bc2dd292b374b1",
//          "name": "CSV Class 3",
//          "slug": "csv-class-3",
//          "isDeleted": false,
//          "__v": 0,
//          "createdAt": "2025-01-28T21:35:38.042Z",
//          "updatedAt": "2025-01-28T21:35:38.042Z"
//        },
//        "name": "Andrew John",
//        "school": "67991ea0c1bc2dd292b374b1",
//        "guardians": [
//          {
//            "id": "67a3f42fee44a92d7649a663",
//            "relationship": "Father",
//            "_id": "67b3e6cbc01bfc3ee9489577"
//          }
//        ],
//        "isDeleted": false,
//        "__v": 2,
//        "createdAt": "2025-02-02T15:21:46.877Z",
//        "updatedAt": "2025-02-18T01:47:55.215Z"
//      },
//      "status": "approved",
//      "school": "67991ea0c1bc2dd292b374b1",
//      "isDeleted": false,
//      "createdAt": "2025-02-28T22:17:02.477Z",
//      "updatedAt": "2025-02-28T22:17:54.635Z",
//      "__v": 0
//    }
//  }
//  }