class EventResponse {
  EventResponse({
    required this.success,
    required this.message,
    required this.data,
    required this.statusCode,
  });
  bool success;
  String message;
  Data data;
  int statusCode;
}

class Data {
  String title;
  DateTime date;
  String details;
  List<dynamic> associatedEvents;
  List<dynamic> classes;
  String school;
  String imageUrl;
  String createdBy;
  bool isDeleted;
  String id;

  Data({
    required this.title,
    required this.date,
    required this.details,
    required this.associatedEvents,
    required this.classes,
    required this.school,
    required this.imageUrl,
    required this.createdBy,
    required this.isDeleted,
    required this.id,
  });
}
