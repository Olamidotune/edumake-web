import 'dart:io';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_model.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_response.dart';
import 'package:retrofit/http.dart';

part 'event_clients.g.dart';

@RestApi()
abstract class EventClients {
  factory EventClients(Dio dio, {String baseUrl}) = _EventClients;

  @POST('/api/v1/sch/events/{schoolId}')
  @MultiPart()
  Future<EventModel> createEvent(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Part() String title,
    @Part() List<String> associateEvents,
    @Part() String date,
    @Part() String details,
    @Part() List<String> classes,
    @Part() File eventImage,
  );

  @GET('/api/v1/sch/events/all/{schoolId}')
  @FormUrlEncoded()
  Future<EventResponse> getEvents(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
  );
}
